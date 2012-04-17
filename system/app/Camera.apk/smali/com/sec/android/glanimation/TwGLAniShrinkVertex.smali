.class public Lcom/sec/android/glanimation/TwGLAniShrinkVertex;
.super Lcom/sec/android/glview/TwGLAniVertex;
.source "TwGLAniShrinkVertex.java"


# static fields
.field private static final PREVIEW_HEIGHT:F = 480.0f

.field private static final PREVIEW_WIDTH:F = 640.0f

.field public static final RESOLUTION_POS_CAMCORDER_LEFT:I = 0x5

.field public static final RESOLUTION_POS_CAMCORDER_WIDE:I = 0x2

.field public static final RESOLUTION_POS_CENTER_FULL:I = 0x3

.field public static final RESOLUTION_POS_CENTER_MINI:I = 0x4

.field public static final RESOLUTION_POS_NONE:I = -0x1

.field public static final RESOLUTION_POS_WIDE_FULL:I = 0x1

.field private static final SHRINK_RATIO:F = 0.88f

.field private static final SHRINK_RATIO_WIDE:F = 0.92f


# instance fields
.field protected final BOTTOM_OFFSET:F

.field protected final BOTTOM_OFFSET_CAMCORDER_MINI:F

.field protected final BOTTOM_OFFSET_CAMCORDER_WIDE:F

.field protected final DISP_OVER_CNT:F

.field protected final DISP_OVER_RATIO:F

.field protected final INCR_CNT:F

.field protected final RIGHT_OFFSET:F

.field protected final RIGHT_OFFSET_WIDE:F

.field private mMiniOffsetHeight:F

.field private mMiniOffsetWidth:F

.field mNotiThumbnail:Z

.field private mResolutionType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 6

    const/high16 v0, 0x4420

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    const/high16 v4, 0x4420

    :goto_0
    const/high16 v0, 0x43f0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_3

    const/high16 v5, 0x43f0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLAniVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const v0, 0x3e051eb8

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->INCR_CNT:F

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->DISP_OVER_CNT:F

    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->DISP_OVER_RATIO:F

    const/high16 v0, -0x3e90

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET_CAMCORDER_WIDE:F

    const/high16 v0, -0x3ea0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET_CAMCORDER_MINI:F

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET:F

    const/high16 v0, -0x3d6c

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET_WIDE:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mNotiThumbnail:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    invoke-direct {p0, p6}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getResolutionType(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    const/high16 v0, 0x4420

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x4420

    sub-float/2addr v0, p4

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    :cond_0
    const/high16 v0, 0x43f0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_1

    const/high16 v0, 0x43f0

    sub-float/2addr v0, p5

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    :cond_1
    return-void

    :cond_2
    move v4, p4

    goto :goto_0

    :cond_3
    move v5, p5

    goto :goto_1
.end method

.method private getResolutionType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getDrawRatio()F
    .locals 4

    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/high16 v1, 0x4140

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x4119c28f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3ee8f5c2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    iget-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mNotiThumbnail:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mNotiThumbnail:Z

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    invoke-interface {v0, p0, v1}, Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;->onAniProgress(Lcom/sec/android/glview/TwGLView;I)V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3e051eb8

    const v2, 0x412a6666

    iget v3, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    goto :goto_1
.end method

.method protected setCustomAnimation(F)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getLeft()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getTop()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getRight()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getLeft()F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    sub-float v6, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getBottom()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getTop()F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    sub-float v1, v14, v15

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v10, v14, :cond_2

    int-to-float v14, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    mul-float v12, v14, v1

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v7, v14, :cond_1

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    mul-float v9, v14, v6

    const v14, 0x3f7ae148

    cmpl-float v14, p1, v14

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    add-float v14, v2, v9

    sub-float v15, v6, v9

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x4120

    add-float/2addr v14, v15

    const v15, 0x3f7ae148

    sub-float v15, p1, v15

    const/high16 v16, 0x437a

    mul-float v15, v15, v16

    add-float v8, v14, v15

    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_1

    :pswitch_1
    add-float v14, v3, v12

    sub-float v15, v1, v12

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3e90

    add-float v11, v14, v15

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v14, v4, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v14, v5, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v14, v4, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v7, 0x1

    move v4, v5

    goto :goto_1

    :pswitch_2
    add-float v14, v2, v9

    sub-float v15, v6, v9

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6b851f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3d6c

    add-float/2addr v14, v15

    const v15, 0x3f7ae148

    sub-float v15, p1, v15

    const/high16 v16, 0x435c

    mul-float v15, v15, v16

    add-float v8, v14, v15

    goto :goto_2

    :pswitch_3
    add-float v14, v2, v9

    sub-float v15, v6, v9

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x4120

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    add-float/2addr v14, v15

    const v15, 0x3f7ae148

    sub-float v15, p1, v15

    const/high16 v16, 0x437a

    mul-float v15, v15, v16

    add-float v8, v14, v15

    goto :goto_2

    :pswitch_4
    add-float v14, v3, v12

    sub-float v15, v1, v12

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x4080

    add-float v11, v14, v15

    goto :goto_3

    :pswitch_5
    add-float v14, v3, v12

    sub-float v15, v1, v12

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3ea0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    move/from16 v16, v0

    add-float v15, v15, v16

    add-float v11, v14, v15

    goto/16 :goto_3

    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_2

    :pswitch_6
    add-float v14, v2, v9

    sub-float v15, v6, v9

    mul-float v15, v15, p1

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x4120

    mul-float v15, v15, p1

    add-float v8, v14, v15

    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_3

    :pswitch_7
    add-float v14, v3, v12

    sub-float v15, v1, v12

    mul-float v15, v15, p1

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3e90

    mul-float v15, v15, p1

    add-float v11, v14, v15

    goto/16 :goto_3

    :pswitch_8
    add-float v14, v2, v9

    sub-float v15, v6, v9

    mul-float v15, v15, p1

    const v16, 0x3f6b851f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3d6c

    mul-float v15, v15, p1

    add-float v8, v14, v15

    goto :goto_4

    :pswitch_9
    add-float v14, v2, v9

    sub-float v15, v6, v9

    mul-float v15, v15, p1

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x4120

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    move/from16 v16, v0

    add-float v15, v15, v16

    mul-float v15, v15, p1

    add-float v8, v14, v15

    goto :goto_4

    :pswitch_a
    add-float v14, v3, v12

    sub-float v15, v1, v12

    mul-float v15, v15, p1

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x4080

    mul-float v15, v15, p1

    add-float v11, v14, v15

    goto/16 :goto_3

    :pswitch_b
    add-float v14, v3, v12

    sub-float v15, v1, v12

    mul-float v15, v15, p1

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3ea0

    mul-float v15, v15, p1

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    add-float v11, v14, v15

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_a
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method
