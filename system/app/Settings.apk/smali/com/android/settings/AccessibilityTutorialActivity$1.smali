.class Lcom/android/settings/AccessibilityTutorialActivity$1;
.super Ljava/lang/Object;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilityTutorialActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilityTutorialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AccessibilityTutorialActivity$1;->this$0:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$1;->this$0:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v2}, Lcom/android/settings/AccessibilityTutorialActivity;->access$000(Lcom/android/settings/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$1;->this$0:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v2}, Lcom/android/settings/AccessibilityTutorialActivity;->access$000(Lcom/android/settings/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$1;->this$0:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v2, v1}, Lcom/android/settings/AccessibilityTutorialActivity;->access$100(Lcom/android/settings/AccessibilityTutorialActivity;Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
