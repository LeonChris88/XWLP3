.class public Lcom/sec/android/app/camera/MenuDimController;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuDimController$DimArray;,
        Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final ADJUST:I = 0xd

.field public static final ANTI_SHAKING:I = 0x2

.field public static final AUTOCONTRAST:I = 0x4

.field public static final BLINK_DETECTION:I = 0x13

.field public static final BRIGHTNESS:I = 0x3

.field public static final CAMCORDER_ADJUST:I = 0x20

.field public static final CAMCORDER_AUTOCONTRAST:I = 0x25

.field public static final CAMCORDER_EFEECT:I = 0x1e

.field public static final CAMCORDER_EXPOSURE_VALUE:I = 0x1c

.field public static final CAMCORDER_FLASH_MODE:I = 0x24

.field public static final CAMCORDER_MODE_SWITCH:I = 0x19

.field public static final CAMCORDER_RESOLUTION:I = 0x1d

.field public static final CAMCORDER_REVIEW:I = 0x21

.field public static final CAMCORDER_SCENE_MODE:I = 0x1b

.field public static final CAMCORDER_STORAGE:I = 0x22

.field public static final CAMCORDER_WHITEBALANCE:I = 0x1f

.field public static final CAMCORDER_ZOOM:I = 0x26

.field public static final CAMERA_MODE_SWITCH:I = 0x0

.field public static final CAMERA_SELF_SWITCH:I = 0x1

.field public static final DEVICELIST:I = 0x29

.field public static final EFFECT:I = 0x8

.field public static final EXPOSURE_VALUE:I = 0x10

.field public static final FLASH_MODE:I = 0xb

.field public static final FLIP:I = 0x27

.field public static final FOCUS_MODE:I = 0xc

.field public static final GUIDELINE:I = 0x17

.field public static final IMAGE_VIEWER:I = 0x18

.field public static final ISO:I = 0x7

.field public static final METERING:I = 0xe

.field public static final NUM_OF_DIM_BUTTONS:I = 0x2b

.field public static final OBJECT_TRACKING:I = 0xf

.field public static final RECORDING_MODE:I = 0x1a

.field public static final REFRESH:I = 0x2a

.field public static final RESOLUTION:I = 0x11

.field public static final REVIEW:I = 0x15

.field public static final SCENE_MODE:I = 0x5

.field public static final SHOOTANDSHARE:I = 0x28

.field public static final SHOOTING_MODE:I = 0x6

.field public static final SHUTTER_SOUND:I = 0x23

.field public static final SMILE_SHOT:I = 0xa

.field public static final STORAGE:I = 0x16

.field private static final TAG:Ljava/lang/String; = "MenuDimController"

.field public static final TIMER:I = 0x14

.field public static final WHITEBALANCE:I = 0x12

.field public static final ZOOM:I = 0x9


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckSceneModeSet:Z

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFlashDimmed:Z

.field private mLowBattery:Z

.field private mPreviousFlashValue:I

.field private mUserSettingValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2b

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    return v0
.end method

.method private getkeyFromCommandId(I)I
    .locals 1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_a
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_d
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_e
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_f
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_10
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_12
    const/16 v0, 0x17

    goto :goto_0

    :sswitch_13
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_14
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_15
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x19

    goto :goto_0

    :sswitch_17
    const/16 v0, 0x1a

    goto :goto_0

    :sswitch_18
    const/16 v0, 0x1d

    goto :goto_0

    :sswitch_19
    const/16 v0, 0x1f

    goto :goto_0

    :sswitch_1a
    const/16 v0, 0x1e

    goto :goto_0

    :sswitch_1b
    const/16 v0, 0x1c

    goto :goto_0

    :sswitch_1c
    const/16 v0, 0x21

    goto :goto_0

    :sswitch_1d
    const/16 v0, 0x22

    goto :goto_0

    :sswitch_1e
    const/16 v0, 0x24

    goto :goto_0

    :sswitch_1f
    const/16 v0, 0x25

    goto :goto_0

    :sswitch_20
    const/16 v0, 0x29

    goto :goto_0

    :sswitch_21
    const/16 v0, 0x2a

    goto :goto_0

    :sswitch_22
    const/16 v0, 0x28

    goto :goto_0

    :sswitch_23
    const/16 v0, 0x27

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x16 -> :sswitch_13
        0x1d -> :sswitch_14
        0x24 -> :sswitch_15
        0x33 -> :sswitch_23
        0x35 -> :sswitch_22
        0x36 -> :sswitch_20
        0x37 -> :sswitch_21
        0xbb8 -> :sswitch_16
        0xbb9 -> :sswitch_17
        0xbbb -> :sswitch_1e
        0xbbc -> :sswitch_18
        0xbbf -> :sswitch_19
        0xbc0 -> :sswitch_1a
        0xbc1 -> :sswitch_1b
        0xbc2 -> :sswitch_1f
        0xbc9 -> :sswitch_1d
        0xbcd -> :sswitch_1c
    .end sparse-switch
.end method

.method private merge([Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x2b

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDimArray([Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x2b

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getIsFlashDimmed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    return v0
.end method

.method public getLowBatteryStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    return v0
.end method

.method public processDim()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x2b

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    return-void
.end method

.method public declared-synchronized refreshButtonDim(II)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_0
    const-string v3, "MenuDimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshButtonDim: menuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " modeid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "MenuDimController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoring user setting values. resolutionChanged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_4

    const-string v3, "true"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    :sswitch_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    if-eqz v3, :cond_2

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    if-eqz v3, :cond_3

    const-string v3, "MenuDimController"

    const-string v4, "set flash dim by external"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->processDim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_4
    :try_start_1
    const-string v3, "false"

    goto :goto_0

    :sswitch_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x27

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :pswitch_2
    const/16 v3, 0x8

    :try_start_2
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_1

    :pswitch_3
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :pswitch_4
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    goto/16 :goto_1

    :pswitch_5
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :pswitch_6
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :pswitch_7
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :pswitch_8
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :pswitch_9
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :pswitch_a
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_11

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :pswitch_b
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_12

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_13

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_1

    :pswitch_c
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_14

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_15

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_2
    if-eqz p2, :cond_6

    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    :cond_5
    packed-switch p2, :pswitch_data_1

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    goto/16 :goto_1

    :pswitch_d
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_16

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_17

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    :pswitch_e
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_18

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_19

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    :pswitch_f
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_1a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    :pswitch_10
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_1c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    :pswitch_11
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_1e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_1f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    :pswitch_12
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_21

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    :pswitch_13
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_22

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_23

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    :pswitch_14
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_24

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_25

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    :pswitch_15
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_26

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_27

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    :pswitch_16
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_28

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_29

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    :pswitch_17
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_2b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    :pswitch_18
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_2c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_2d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    :pswitch_19
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_2e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_2f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    goto/16 :goto_1

    :sswitch_3
    if-eqz p2, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    goto/16 :goto_1

    :sswitch_4
    if-ne p2, v6, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_30

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_31

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_5
    if-ne p2, v6, :cond_7

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_32

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x3

    if-ne p2, v3, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_33

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_34

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_35

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_36

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :cond_9
    if-nez p2, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x27

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1d

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto/16 :goto_1

    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    :sswitch_7
    if-ne p2, v6, :cond_c

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_37

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_38

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_39

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    :cond_c
    if-ne p2, v7, :cond_d

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_3a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1b

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    :sswitch_8
    if-nez p2, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x18

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x22

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    :sswitch_a
    const/16 v3, 0xd

    if-ne p2, v3, :cond_1

    const/16 v3, 0x70

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->access$300(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z

    move-result-object v3

    const/16 v4, 0x26

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->access$400(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z

    move-result-object v3

    const/16 v4, 0x26

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x26

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_b
    if-nez p2, :cond_e

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    goto/16 :goto_1

    :cond_e
    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
        0xd -> :sswitch_0
        0xe -> :sswitch_4
        0x16 -> :sswitch_6
        0x1d -> :sswitch_8
        0x27 -> :sswitch_b
        0x65 -> :sswitch_5
        0x68 -> :sswitch_a
        0x75 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_c
    .end packed-switch

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :array_16
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_29
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_2a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_2b
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_2c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_2d
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_2e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_2f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_30
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_31
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_32
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_33
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_34
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_35
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_37
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_38
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_39
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_3a
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_3b
    .array-data 0x4
        0x1at 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public declared-synchronized removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetDim()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x2b

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method declared-synchronized setDim(IZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDimArray([Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x2b

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setIsFlashDimmed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    return-void
.end method

.method public varargs setSettingDefault([I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setEffect(I)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_1

    :pswitch_b
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto :goto_1

    :pswitch_c
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto :goto_1

    :pswitch_d
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto :goto_1

    :pswitch_e
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    goto :goto_1

    :pswitch_f
    const/16 v5, 0x12

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto :goto_1

    :pswitch_10
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    goto :goto_1

    :pswitch_11
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    goto :goto_1

    :pswitch_12
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x2b

    if-ge v0, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v3

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getDim()Z

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void
.end method
