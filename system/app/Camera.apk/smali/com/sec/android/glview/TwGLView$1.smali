.class Lcom/sec/android/glview/TwGLView$1;
.super Ljava/lang/Object;
.source "TwGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLView;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$000(Lcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-static {v2}, Lcom/sec/android/glview/TwGLView;->access$100(Lcom/sec/android/glview/TwGLView;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-static {v3}, Lcom/sec/android/glview/TwGLView;->access$200(Lcom/sec/android/glview/TwGLView;)F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragStart(FF)V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$300(Lcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method
