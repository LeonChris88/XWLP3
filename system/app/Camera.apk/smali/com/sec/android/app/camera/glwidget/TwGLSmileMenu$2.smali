.class Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;
.super Ljava/lang/Object;
.source "TwGLSmileMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()Z
    .locals 2

    const-string v0, "Debug"

    const-string v1, "anim end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
