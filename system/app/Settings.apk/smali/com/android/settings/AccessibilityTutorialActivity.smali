.class public Lcom/android/settings/AccessibilityTutorialActivity;
.super Landroid/app/Activity;
.source "AccessibilityTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilityTutorialActivity$TutorialTextView;,
        Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;,
        Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;,
        Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;,
        Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDisableOnPause:Z

.field private final mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mViewAnimator:Landroid/widget/ViewAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/AccessibilityTutorialActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilityTutorialActivity$1;-><init>(Lcom/android/settings/AccessibilityTutorialActivity;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AccessibilityTutorialActivity;Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AccessibilityTutorialActivity;->activateModule(Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/AccessibilityTutorialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AccessibilityTutorialActivity;->interrupt()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/AccessibilityTutorialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AccessibilityTutorialActivity;->previous()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/AccessibilityTutorialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AccessibilityTutorialActivity;->next()V

    return-void
.end method

.method private activateModule(Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->activate()V

    return-void
.end method

.method private deactivateModule(Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->deactivate()V

    return-void
.end method

.method private interrupt()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    return-void
.end method

.method private next()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilityTutorialActivity;->show(I)V

    return-void
.end method

.method private previous()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilityTutorialActivity;->show(I)V

    return-void
.end method

.method private show(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;

    invoke-direct {p0, v1}, Lcom/android/settings/AccessibilityTutorialActivity;->deactivateModule(Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;)V

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v3, 0x10a0002

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Landroid/widget/ViewAnimator;

    invoke-direct {v2, p0}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    new-instance v3, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;-><init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    new-instance v3, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;-><init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilityTutorialActivity;->setContentView(Landroid/view/View;)V

    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilityTutorialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    const-string v2, "active_module"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/AccessibilityTutorialActivity;->show(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/AccessibilityTutorialActivity;->show(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v1, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mDisableOnPause:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touch_exploration_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touch_exploration_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "touch_exploration_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v3, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mDisableOnPause:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mDisableOnPause:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "active_module"

    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
