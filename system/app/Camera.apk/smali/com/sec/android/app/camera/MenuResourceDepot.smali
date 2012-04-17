.class public Lcom/sec/android/app/camera/MenuResourceDepot;
.super Ljava/lang/Object;
.source "MenuResourceDepot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuResourceDepot"


# instance fields
.field protected mActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/AbstractCameraActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

.field private mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

.field private mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

.field private mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

.field private mCameraAdjustMenu:Lcom/sec/android/app/camera/AdjustMenu;

.field private mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

.field private mEmptyView:Lcom/sec/android/app/camera/EmptyView;

.field private mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

.field public mMenus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field private mPostView:Lcom/sec/android/app/camera/PostView;

.field public mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

.field private mResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

.field private mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

.field private mVintageShotSelectionResourceData:Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraAdjustMenu:Lcom/sec/android/app/camera/AdjustMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mPostView:Lcom/sec/android/app/camera/PostView;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mVintageShotSelectionResourceData:Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private clearAllMenus()V
    .locals 5

    const-string v3, "MenuResourceDepot"

    const-string v4, "clearAllMenus"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    const-string v3, "MenuResourceDepot"

    const-string v4, "clearing..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearInvisibleListViews()V
    .locals 6

    const-string v4, "MenuResourceDepot"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/BlackScreen;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->isGLShootingModeMenu(I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    instance-of v4, v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->removeMenu(Lcom/sec/android/app/camera/MenuBase;)V

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearInvisibleViews()V
    .locals 6

    const-string v4, "MenuResourceDepot"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/BlackScreen;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->isGLShootingModeMenu(I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->removeMenu(Lcom/sec/android/app/camera/MenuBase;)V

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public closeVisibleViews()V
    .locals 5

    const-string v3, "MenuResourceDepot"

    const-string v4, "closeVisibleViews"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;
    .locals 9

    const/4 v0, 0x0

    const/4 v6, 0x4

    const/4 v8, 0x5

    const/4 v7, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/AbstractCameraActivity;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/BlackScreen;

    const v3, 0x7f08000e

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/BlackScreen;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    const v3, 0x7f08001e

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/CameraBaseIndicators;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    const v3, 0x7f080010

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sec/android/app/camera/CameraIndicators;

    const v3, 0x7f080028

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/CameraIndicators;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sec/android/app/camera/CamcorderIndicators;

    const v3, 0x7f080019

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/CamcorderIndicators;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    if-nez v0, :cond_6

    new-instance v0, Lcom/sec/android/app/camera/TimerCounting;

    const v3, 0x7f08004b

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/TimerCounting;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mPostView:Lcom/sec/android/app/camera/PostView;

    if-nez v0, :cond_7

    new-instance v0, Lcom/sec/android/app/camera/PostView;

    const v3, 0x7f080048

    const/16 v6, 0x12

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/PostView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mPostView:Lcom/sec/android/app/camera/PostView;

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mPostView:Lcom/sec/android/app/camera/PostView;

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    if-nez v0, :cond_8

    new-instance v0, Lcom/sec/android/app/camera/EmptyView;

    const v3, 0x7f080035

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/EmptyView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

    if-nez v0, :cond_9

    new-instance v0, Lcom/sec/android/app/camera/HelptextForShootingMode;

    const v3, 0x7f080036

    const/4 v6, 0x6

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/HelptextForShootingMode;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

    if-nez v0, :cond_a

    new-instance v0, Lcom/sec/android/app/camera/SelfShotView;

    const v3, 0x7f08004a

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/SelfShotView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    const v3, 0x7f08004f

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f030002
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto :goto_1

    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto :goto_1

    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShootingModeResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto :goto_1

    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto :goto_1

    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto :goto_1

    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto :goto_1

    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto :goto_1

    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ObjectTrackingResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ObjectTrackingResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AntiShakeResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AntiShakeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraAutoContrastResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraAutoContrastResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_10
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BlinkDetectionResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BlinkDetectionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SnSMenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SnSMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_14
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_15
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_16
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_17
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_18
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraStorageResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraStorageResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_19
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraEditableShortcutResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraEditableShortcutResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderResolutionResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderResolutionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_20
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderWhiteBalanceResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderWhiteBalanceResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_21
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderEffectResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderEffectResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_22
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderTimerResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderTimerResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_23
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_24
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_25
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAutoContrastResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAutoContrastResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_26
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderGuideLineResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderGuideLineResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_27
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderReviewResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderReviewResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_28
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderOutdoorVisibilityResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderOutdoorVisibilityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_29
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSettingsMenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_2a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderEditableShortcutResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderEditableShortcutResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_2b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSideMenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSideMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_2c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderExposureValueResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderExposureValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_2d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderStorageResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderStorageResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_2e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_c
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_2e
        0x13 -> :sswitch_16
        0x14 -> :sswitch_14
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x1b -> :sswitch_19
        0x1f -> :sswitch_1b
        0x23 -> :sswitch_1c
        0x27 -> :sswitch_0
        0x28 -> :sswitch_1a
        0x29 -> :sswitch_1
        0x33 -> :sswitch_15
        0x35 -> :sswitch_13
        0xbb9 -> :sswitch_1d
        0xbbb -> :sswitch_1f
        0xbbc -> :sswitch_1e
        0xbbe -> :sswitch_22
        0xbbf -> :sswitch_20
        0xbc0 -> :sswitch_21
        0xbc1 -> :sswitch_2c
        0xbc2 -> :sswitch_25
        0xbc3 -> :sswitch_23
        0xbc4 -> :sswitch_2e
        0xbc9 -> :sswitch_2d
        0xbcb -> :sswitch_24
        0xbcc -> :sswitch_26
        0xbcd -> :sswitch_27
        0xbce -> :sswitch_28
        0xbcf -> :sswitch_29
        0xbd0 -> :sswitch_2a
        0xbd1 -> :sswitch_2b
    .end sparse-switch
.end method

.method public isGLShootingModeMenu(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "MenuResourceDepot"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mVintageShotSelectionResourceData:Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mVintageShotSelectionResourceData:Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;->cleanUpResources()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraAdjustMenu:Lcom/sec/android/app/camera/AdjustMenu;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraAdjustMenu:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AdjustMenu;->clear()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/TimerCounting;->clear()V

    :cond_2
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCameraAdjustMenu:Lcom/sec/android/app/camera/AdjustMenu;

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mTimerCounting:Lcom/sec/android/app/camera/TimerCounting;

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mPostView:Lcom/sec/android/app/camera/PostView;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/EmptyView;->clear()V

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    :cond_3
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mHelptextForShootingMode:Lcom/sec/android/app/camera/HelptextForShootingMode;

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mVintageShotSelectionResourceData:Lcom/sec/android/app/camera/resourcedata/VintageShotSelectionResourceData;

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mSelfShotView:Lcom/sec/android/app/camera/SelfShotView;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->clear()V

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mCamcorderRecordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/BlackScreen;->clear()V

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mBlackScreen:Lcom/sec/android/app/camera/BlackScreen;

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearAllMenus()V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->cleanUpResources()V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->clear()V

    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    :cond_9
    return-void
.end method
