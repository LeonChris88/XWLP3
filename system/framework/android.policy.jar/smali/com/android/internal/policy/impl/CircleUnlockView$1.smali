.class Lcom/android/internal/policy/impl/CircleUnlockView$1;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleUnlockView;->setAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$800(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$700(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$1000(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$900(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$1200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$1100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$000(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$400(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$300(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$600(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$500(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
