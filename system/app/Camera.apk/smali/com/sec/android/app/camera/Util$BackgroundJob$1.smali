.class Lcom/sec/android/app/camera/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Util$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Util$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Util$BackgroundJob;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob$1;->this$0:Lcom/sec/android/app/camera/Util$BackgroundJob;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob$1;->this$0:Lcom/sec/android/app/camera/Util$BackgroundJob;

    invoke-static {v0}, Lcom/sec/android/app/camera/Util$BackgroundJob;->access$000(Lcom/sec/android/app/camera/Util$BackgroundJob;)Lcom/sec/android/app/camera/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob$1;->this$0:Lcom/sec/android/app/camera/Util$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MonitoredActivity;->removeLifeCycleListener(Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob$1;->this$0:Lcom/sec/android/app/camera/Util$BackgroundJob;

    invoke-static {v0}, Lcom/sec/android/app/camera/Util$BackgroundJob;->access$100(Lcom/sec/android/app/camera/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob$1;->this$0:Lcom/sec/android/app/camera/Util$BackgroundJob;

    invoke-static {v0}, Lcom/sec/android/app/camera/Util$BackgroundJob;->access$100(Lcom/sec/android/app/camera/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
