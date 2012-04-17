.class Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$3;
.super Ljava/lang/Object;
.source "TwGLModeSwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->onDragEnd(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->onDrag(FFFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCamcorderSelected()V

    return-void
.end method
