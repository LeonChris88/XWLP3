.class public Lcom/sec/android/app/camera/command/LaunchRefreshCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchRefreshCommand.java"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;->mSlideDirection:I

    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DIRECT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    return-void
.end method

.method public setSliderDirection(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;->mSlideDirection:I

    return-void
.end method

.method public setZOrder(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    return-void
.end method
