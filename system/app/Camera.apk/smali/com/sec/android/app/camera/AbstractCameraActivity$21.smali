.class Lcom/sec/android/app/camera/AbstractCameraActivity$21;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$21;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$21;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$21;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v2, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$21;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v2, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    return-void
.end method
