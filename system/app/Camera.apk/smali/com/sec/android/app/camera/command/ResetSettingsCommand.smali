.class public Lcom/sec/android/app/camera/command/ResetSettingsCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ResetSettingsCommand.java"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showResetPopup()V

    return-void
.end method
