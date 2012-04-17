.class public Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLUserProfileButton.java"


# instance fields
.field protected mButtonHeight:F

.field protected mButtonWidth:F

.field protected mDim:Z

.field protected mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mDimId:I

.field protected mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mHighlightId:I

.field protected mImageData:[B

.field protected mImagePath:Ljava/lang/String;

.field protected mLock:Z

.field protected mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mNormalId:I

.field protected mPressed:Z

.field protected mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mPressedId:I

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F

.field protected mShowHighlight:Z

.field protected mShowText:Z

.field protected mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V
    .locals 8

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mLock:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowText:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowHighlight:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    if-eqz p6, :cond_0

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_0
    if-eqz p7, :cond_1

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_1
    if-eqz p8, :cond_2

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_2
    if-eqz p9, :cond_3

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_3
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowHighlight:Z

    :cond_d
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalId:I

    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedId:I

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimId:I

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlightId:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    :cond_4
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mImageData:[B

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    return-void
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

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

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v0

    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setSize(FF)V

    return-void
.end method

.method public isDimmed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    return v0
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mLock:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowText:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLText;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowHighlight:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowHighlight:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onLayoutUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onLayoutUpdate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onLayoutUpdate()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onLayoutUpdate()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onLayoutUpdate()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onLayoutUpdate()V

    :cond_4
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

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

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mLock:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setButtonResources(IIII)V
    .locals 9

    const/high16 v8, 0x3f80

    const v7, 0x3e4ccccd

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_2
    if-eqz p4, :cond_3

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAlpha(F)V

    :cond_9
    :goto_0
    return-void

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setDim(Z)V
    .locals 3

    const/high16 v2, 0x3f80

    const v1, 0x3e4ccccd

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setHighlightVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowHighlight:Z

    return-void
.end method

.method public setLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mLock:Z

    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_0
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 4

    const/high16 v2, 0x4000

    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    :cond_5
    return-void
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowText:Z

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowText:Z

    return-void
.end method

.method public setTextAlign(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->moveLayout(FF)V

    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowText:Z

    return-void
.end method
