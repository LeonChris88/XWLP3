.class Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;
.super Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchTutorialModule2"
.end annotation


# instance fields
.field private final mAppsAdapter:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

.field private mExploreCount:I

.field private mInitialVisibleItem:I

.field private mScrollCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;)V
    .locals 4

    const v3, 0x7f080003

    const/4 v2, 0x0

    const v0, 0x7f040002

    const v1, 0x7f0b06a5

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;-><init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;II)V

    iput v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mExploreCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mInitialVisibleItem:I

    iput v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mScrollCount:I

    new-instance v0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2$1;

    const v1, 0x1090003

    const v2, 0x1020014

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2$1;-><init>(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mAppsAdapter:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mAppsAdapter:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mAppsAdapter:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->setBackVisible(Z)V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mExploreCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mExploreCount:I

    iget v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mExploreCount:I

    if-lt v0, v4, :cond_2

    const v0, 0x7f0b06a8

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->addInstruction(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->setFlag(IZ)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mExploreCount:I

    if-ne v0, v3, :cond_0

    const v0, 0x7f0b06a7

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->addInstruction(I[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1020014
        :pswitch_0
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->hasFlag(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mInitialVisibleItem:I

    if-gez v2, :cond_0

    iput p2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mInitialVisibleItem:I

    :cond_0
    iget v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mInitialVisibleItem:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mScrollCount:I

    if-eq v2, v1, :cond_1

    if-gtz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mScrollCount:I

    iget v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mScrollCount:I

    if-lt v2, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b069c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f0b06aa

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->addInstruction(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->setFlag(IZ)V

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->setFinishVisible(Z)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->mScrollCount:I

    if-ne v2, v3, :cond_1

    const v2, 0x7f0b06a9

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->addInstruction(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onShown()V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f0b06a6

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->addInstruction(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v2}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;->setFlag(IZ)V

    return-void
.end method
