.class Lcom/sec/android/app/camera/ZoomButtonsController$4;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ZoomButtonsController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ZoomButtonsController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController$4;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$4;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-static {}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$400()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$500(Lcom/sec/android/app/camera/ZoomButtonsController;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$4;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$600(Lcom/sec/android/app/camera/ZoomButtonsController;)Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$4;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$600(Lcom/sec/android/app/camera/ZoomButtonsController;)Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    :cond_0
    return-void
.end method