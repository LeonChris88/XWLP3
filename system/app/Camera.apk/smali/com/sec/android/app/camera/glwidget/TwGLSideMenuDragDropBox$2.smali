.class Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;
.super Ljava/lang/Object;
.source "TwGLSideMenuDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->isWideResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getDim()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-interface {v0, v1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
