.class public Lcom/sec/android/app/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/sec/android/app/camera/CameraHolder;


# instance fields
.field private mCameraDevice:Landroid/hardware/Camera;

.field private final mHandler:Landroid/os/Handler;

.field private mKeepBeforeTime:J

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraHolder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/sec/android/app/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/CameraHolder$MyHandler;-><init>(Lcom/sec/android/app/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/sec/android/app/camera/CameraHolder;
    .locals 2

    const-class v1, Lcom/sec/android/app/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/CameraHolder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mLock:Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()Landroid/hardware/Camera;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/camera/CameraHardwareException;
        }
    .end annotation

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/sec/android/app/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryOpen()Landroid/hardware/Camera;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraHolder;->open()Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/sec/android/app/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
