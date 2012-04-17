.class public abstract Lcom/sec/android/app/camera/command/MenuCommand;
.super Ljava/lang/Object;
.source "MenuCommand.java"


# instance fields
.field protected mAnchor:Lcom/sec/android/glview/TwGLImage;

.field protected mLaunchX:F

.field protected mLaunchY:F

.field protected mZOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    return-void
.end method

.method public setLaunchPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchX:F

    iput p2, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchY:F

    return-void
.end method

.method public setZOrder(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    return-void
.end method
