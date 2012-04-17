.class public abstract Lcom/sec/android/glview/TwGLTexture;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLTexture"

.field private static final TEXTURE_PADDING_SIZE:I = 0x2


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mCoordBuffer:[F

.field protected mFlip:Z

.field protected mGL:Ljavax/microedition/khronos/opengles/GL11;

.field protected mIndexBuffer:Ljava/nio/ByteBuffer;

.field mIndices:[B

.field protected mTexCoordBuffer:Ljava/nio/ByteBuffer;

.field protected mTexCoordHeight:F

.field protected mTexCoordWidth:F

.field protected mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

.field protected mTextureLoaded:Z

.field protected mTextureReloaded:Z

.field protected mTextures:[I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field mVertices:[F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->clearBuffers()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLContext;->addTextureToDelete(Lcom/sec/android/glview/TwGLTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized clearBuffers()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    return-void
.end method

.method public declared-synchronized getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized initBuffers()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->clearBuffers()V

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    invoke-static {v2}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    if-nez v2, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x3

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x3

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    invoke-static {v2}, Lcom/sec/android/glview/TwGLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    if-nez v2, :cond_1

    const/16 v2, 0x8

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x0

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    const/high16 v3, 0x3f80

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x0

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    const/high16 v3, 0x3f80

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized initCoordBuffer(IIII)V
    .locals 4

    monitor-enter p0

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    :try_start_0
    iput v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    int-to-float v2, p2

    int-to-float v3, p4

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x0

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x0

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x0

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x0

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized initSize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract loadBitmap()Landroid/graphics/Bitmap;
.end method

.method protected declared-synchronized loadGLTexture(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 35

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-static/range {v24 .. v24}, Lcom/sec/android/glview/TwGLUtil;->nextPowerOf2(I)I

    move-result v6

    invoke-static {v15}, Lcom/sec/android/glview/TwGLUtil;->nextPowerOf2(I)I

    move-result v7

    move/from16 v0, v24

    if-ne v0, v6, :cond_1

    if-ne v15, v7, :cond_1

    const/16 v2, 0xde1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-static {v2, v3, v4, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15, v6, v7}, Lcom/sec/android/glview/TwGLTexture;->initCoordBuffer(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v10

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move v9, v5

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v20

    if-eqz v20, :cond_2

    const/16 v12, 0xde1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x2

    move-object/from16 v11, p1

    move/from16 v16, v6

    move/from16 v18, v5

    move/from16 v19, v10

    invoke-interface/range {v11 .. v20}, Ljavax/microedition/khronos/opengles/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v22, 0xde1

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x2

    move-object/from16 v21, p1

    move/from16 v27, v7

    move/from16 v28, v5

    move/from16 v29, v10

    move-object/from16 v30, v20

    invoke-interface/range {v21 .. v30}, Ljavax/microedition/khronos/opengles/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v26, 0xde1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/4 v2, 0x2

    if-ge v7, v2, :cond_3

    const/16 v29, 0x0

    :goto_2
    const/16 v31, 0x2

    move-object/from16 v25, p1

    move/from16 v30, v6

    move/from16 v32, v5

    move/from16 v33, v10

    move-object/from16 v34, v20

    invoke-interface/range {v25 .. v34}, Ljavax/microedition/khronos/opengles/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v26, 0xde1

    const/16 v27, 0x0

    const/4 v2, 0x2

    if-ge v6, v2, :cond_4

    const/16 v28, 0x0

    :goto_3
    const/16 v29, 0x0

    const/16 v30, 0x2

    move-object/from16 v25, p1

    move/from16 v31, v7

    move/from16 v32, v5

    move/from16 v33, v10

    move-object/from16 v34, v20

    invoke-interface/range {v25 .. v34}, Ljavax/microedition/khronos/opengles/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-virtual/range {v20 .. v20}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    const/16 v20, 0x0

    :cond_2
    const/16 v25, 0xde1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    move/from16 v30, v5

    move/from16 v31, v10

    invoke-static/range {v25 .. v31}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v29, v7, -0x2

    goto :goto_2

    :cond_4
    add-int/lit8 v28, v6, -0x2

    goto :goto_3
.end method

.method public declared-synchronized onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    :cond_3
    :goto_1
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glFrontFace(I)V

    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    :cond_4
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIILjava/nio/Buffer;)V

    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    :cond_6
    const-string v0, "TwGLTexture"

    const-string v1, "init buffers on onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onLayoutUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    return-void
.end method

.method protected declared-synchronized onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initSize()V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :goto_0
    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v3, 0x4

    new-array v0, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v0, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v0, v3

    const/4 v3, 0x2

    int-to-float v5, v2

    aput v5, v0, v3

    const/4 v3, 0x3

    int-to-float v5, v1

    aput v5, v0, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    :cond_1
    const/4 v3, 0x1

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v6, 0x0

    invoke-interface {p1, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    const/16 v3, 0xde1

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {p1, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    rem-int/lit8 v3, v2, 0x2

    if-ne v3, v4, :cond_2

    const/16 v3, 0xcf5

    const/4 v5, 0x2

    invoke-interface {p1, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    :goto_1
    const/16 v3, 0xde1

    const v5, 0x8b9d

    const/4 v6, 0x0

    invoke-interface {p1, v3, v5, v0, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    const/16 v3, 0xde1

    const/16 v5, 0x2801

    const v6, 0x46180400

    invoke-interface {p1, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    const/16 v3, 0xde1

    const/16 v5, 0x2800

    const v6, 0x46180400

    invoke-interface {p1, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    const/16 v3, 0xde1

    const/16 v5, 0x2802

    const v6, 0x46240400

    invoke-interface {p1, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    const/16 v3, 0xde1

    const/16 v5, 0x2803

    const v6, 0x46240400

    invoke-interface {p1, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    move v3, v4

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xcf5

    const/4 v5, 0x4

    invoke-interface {p1, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    return-void
.end method

.method protected declared-synchronized reLoad()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFlip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    if-nez v1, :cond_0

    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getTop()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getBottom()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x4

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getTop()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x6

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x7

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getBottom()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v2, 0x9

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v2, 0xa

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
