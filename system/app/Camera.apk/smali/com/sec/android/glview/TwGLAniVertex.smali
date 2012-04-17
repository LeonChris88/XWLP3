.class public abstract Lcom/sec/android/glview/TwGLAniVertex;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLAniVertex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;
    }
.end annotation


# static fields
.field public static final DISP_PIC:I = 0x2

.field public static final DISP_PLAY:I = 0x1

.field public static final DISP_STOP:I


# instance fields
.field protected final DISP_BREAK:F

.field protected final DISP_CNT:F

.field protected final DISP_CONTINUE:F

.field protected GRID_SIZE:I

.field protected final INIT_CNT:F

.field protected mCnt:F

.field protected mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mLayoutUpdated:Z

.field protected mMode:I

.field protected mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mVertices:[F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLAniVertex;->mLayoutUpdated:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->DISP_CNT:F

    iput v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->INIT_CNT:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->DISP_BREAK:F

    const/high16 v0, -0x4000

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->DISP_CONTINUE:F

    iput v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    iput v2, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertices:[F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getDrawRatio()F
.end method

.method public declared-synchronized getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method protected declared-synchronized initVertices()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertices:[F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertices:[F

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->setVertices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5

    const/high16 v3, -0x4080

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mLayoutUpdated:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->setVertices()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mLayoutUpdated:Z

    :cond_2
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getDrawRatio()F

    move-result v0

    :cond_3
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_4

    const/high16 v1, -0x4000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->stopAniCustomAnimation()V

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniVertex;->setCustomAnimation(F)V

    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onLayoutUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mLayoutUpdated:Z

    return-void
.end method

.method protected declared-synchronized onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->initSize()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->initVertices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract setCustomAnimation(F)V
.end method

.method public setOnAniProgressListener(Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    return-void
.end method

.method public setPicureMode(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    goto :goto_0
.end method

.method protected declared-synchronized setVertices()V
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getRight()F

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getLeft()F

    move-result v12

    sub-float v5, v11, v12

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getBottom()F

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniVertex;->getTop()F

    move-result v12

    sub-float v0, v11, v12

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    iget v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v8, v11, :cond_1

    const/4 v6, 0x0

    move v4, v3

    :goto_1
    iget v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v6, v11, :cond_0

    int-to-float v11, v6

    iget v12, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float/2addr v11, v5

    add-float v7, v1, v11

    int-to-float v11, v8

    iget v12, p0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float/2addr v11, v0

    add-float v9, v2, v11

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v11, v4, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v11, v4, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    move v4, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public startAniCustomAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    return-void
.end method

.method public stopAniCustomAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    invoke-interface {v0, p0, v1}, Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;->onAniProgress(Lcom/sec/android/glview/TwGLView;I)V

    :cond_0
    return-void
.end method
