.class Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;
.super Landroid/os/Handler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonMoveHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CropImageView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CropImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CropImageView;Lcom/sec/android/app/camera/CropImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;-><init>(Lcom/sec/android/app/camera/CropImageView;)V

    return-void
.end method

.method private getButtonsAni(Z)Landroid/view/animation/Animation;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {v2}, Lcom/sec/android/app/camera/CropImageView;->access$200(Lcom/sec/android/app/camera/CropImageView;)[Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/animation/Animation;

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CropImageView;->access$202(Lcom/sec/android/app/camera/CropImageView;[Landroid/view/animation/Animation;)[Landroid/view/animation/Animation;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {v2}, Lcom/sec/android/app/camera/CropImageView;->access$200(Lcom/sec/android/app/camera/CropImageView;)[Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    :goto_0
    if-eqz v0, :cond_2

    move-object v1, v0

    :goto_1
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {v2}, Lcom/sec/android/app/camera/CropImageView;->access$200(Lcom/sec/android/app/camera/CropImageView;)[Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {v2}, Lcom/sec/android/app/camera/CropImageView;->access$100(Lcom/sec/android/app/camera/CropImageView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_2
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {v2}, Lcom/sec/android/app/camera/CropImageView;->access$100(Lcom/sec/android/app/camera/CropImageView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {v0}, Lcom/sec/android/app/camera/CropImageView;->access$100(Lcom/sec/android/app/camera/CropImageView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {v0}, Lcom/sec/android/app/camera/CropImageView;->access$100(Lcom/sec/android/app/camera/CropImageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->getButtonsAni(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {v0}, Lcom/sec/android/app/camera/CropImageView;->access$100(Lcom/sec/android/app/camera/CropImageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {v0}, Lcom/sec/android/app/camera/CropImageView;->access$100(Lcom/sec/android/app/camera/CropImageView;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->getButtonsAni(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->this$0:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {v0}, Lcom/sec/android/app/camera/CropImageView;->access$100(Lcom/sec/android/app/camera/CropImageView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->sendEmptyMessage(I)Z

    return-void
.end method
