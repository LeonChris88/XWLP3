.class public Lcom/sec/android/glview/TwGLNinePatchTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLNinePatchTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLNinePatchTexture"


# instance fields
.field protected GRID_SIZE:I

.field private mDivX:[I

.field private mDivY:[I

.field private mNinePatchHeight:I

.field private mNinePatchWidth:I

.field private mResId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    iput p6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    iput p6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    iput p7, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    iput p4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    return-void
.end method

.method private processNinePatch([B)Z
    .locals 11

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    add-int/lit8 v2, v7, 0x2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    add-int/lit8 v3, v7, 0x2

    new-array v7, v2, [I

    iput-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    new-array v7, v3, [I

    iput-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aput v5, v7, v5

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v7, v2, -0x1

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    aput v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    add-int/lit8 v8, v2, -0x1

    iget v9, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    aput v9, v7, v8

    iget v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    if-le v7, v10, :cond_2

    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aget v7, v7, v6

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aput v6, v7, v6

    :cond_2
    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    aput v5, v7, v5

    const/4 v1, 0x1

    :goto_2
    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    add-int/lit8 v7, v3, -0x1

    iget v8, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    aput v8, v5, v7

    iget v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    if-le v5, v10, :cond_4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    add-int/lit8 v7, v3, -0x2

    aget v5, v5, v7

    iget v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    add-int/lit8 v7, v3, -0x2

    iget v8, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    add-int/lit8 v8, v8, -0x1

    aput v8, v5, v7

    :cond_4
    move v5, v6

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    invoke-super {p0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    return-void
.end method

.method protected declared-synchronized initBuffers()V
    .locals 14

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clearBuffers()V

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    invoke-static {v12}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    if-nez v12, :cond_0

    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x6

    new-array v12, v12, [B

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    :cond_0
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    if-nez v12, :cond_1

    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x2

    new-array v12, v12, [F

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    if-ge v11, v12, :cond_3

    const/4 v10, 0x0

    move v1, v0

    move v3, v2

    :goto_1
    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    if-ge v10, v12, :cond_2

    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    add-int/2addr v12, v10

    int-to-byte v4, v12

    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, 0x1

    int-to-byte v5, v12

    add-int/lit8 v12, v11, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    int-to-byte v6, v12

    add-int/lit8 v12, v11, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, 0x1

    int-to-byte v7, v12

    int-to-float v12, v10

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    int-to-float v13, v13

    div-float v8, v12, v13

    int-to-float v12, v11

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    int-to-float v13, v13

    div-float v9, v12, v13

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    aput-byte v4, v12, v3

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    aput-byte v5, v12, v2

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    aput-byte v7, v12, v3

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v12, v2

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    aput-byte v7, v12, v3

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    aput-byte v6, v12, v2

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    aput v8, v12, v1

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    aput v9, v12, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    move v0, v1

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    invoke-static {v12}, Lcom/sec/android/glview/TwGLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-nez v12, :cond_4

    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x2

    mul-int/lit8 v12, v12, 0x20

    div-int/lit8 v12, v12, 0x8

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    :cond_4
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-nez v12, :cond_5

    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x2

    mul-int/lit8 v12, v12, 0x20

    div-int/lit8 v12, v12, 0x8

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    :cond_5
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method protected declared-synchronized initCoordBuffer(IIII)V
    .locals 7

    monitor-enter p0

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    :try_start_0
    iput v4, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    int-to-float v4, p2

    int-to-float v5, p4

    div-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    if-gt v3, v4, :cond_1

    const/4 v2, 0x0

    move v1, v0

    :goto_1
    iget v4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    if-gt v2, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aget v5, v5, v2

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    mul-float/2addr v5, v6

    aput v5, v4, v1

    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    aget v5, v5, v3

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    mul-float/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    if-gt v3, v4, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    move v1, v0

    :goto_3
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aget v5, v5, v2

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    mul-float/2addr v5, v6

    aput v5, v4, v1

    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    aget v5, v5, v3

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    mul-float/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected loadNinePatch()V
    .locals 4

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->processNinePatch([B)Z

    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 13

    const/4 v12, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    if-nez v10, :cond_0

    iget v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x3

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_0
    iget v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v10, v10, 0x1

    if-ge v9, v10, :cond_4

    const/4 v8, 0x0

    move v3, v2

    :goto_1
    iget v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v10, v10, 0x1

    if-ge v8, v10, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v10

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_1

    packed-switch v8, :pswitch_data_0

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v10

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_2

    packed-switch v9, :pswitch_data_1

    :cond_2
    :goto_3
    iget-object v10, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    add-int/lit8 v2, v3, 0x1

    add-float v11, v1, v5

    aput v11, v10, v3

    iget-object v10, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    add-int/lit8 v3, v2, 0x1

    add-float v11, v4, v6

    aput v11, v10, v2

    iget-object v10, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    add-int/lit8 v2, v3, 0x1

    const/4 v11, 0x0

    aput v11, v10, v3

    add-int/lit8 v8, v8, 0x1

    move v3, v2

    goto :goto_1

    :pswitch_0
    iget-object v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aget v10, v10, v8

    int-to-float v5, v10

    goto :goto_2

    :pswitch_1
    iget v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    iget-object v11, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aget v11, v11, v8

    sub-int/2addr v10, v11

    int-to-float v10, v10

    sub-float v5, v7, v10

    goto :goto_2

    :pswitch_2
    iget-object v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    aget v10, v10, v9

    int-to-float v6, v10

    goto :goto_3

    :pswitch_3
    iget v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    iget-object v11, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    aget v11, v11, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v10, v11

    int-to-float v10, v10

    sub-float v6, v0, v10

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v2, v3

    goto :goto_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
