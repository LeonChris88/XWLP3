.class public Lcom/android/mms/ui/ToButtonLayout;
.super Landroid/widget/LinearLayout;
.source "ToButtonLayout.java"


# instance fields
.field private mToButtonPanel:Landroid/widget/AbsoluteLayout;

.field private mToButtonPanelLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addButton(Landroid/view/View;II)V
    .locals 5

    const/4 v3, -0x2

    iget-object v2, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, p2, p3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2, p1, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ToButtonLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanelLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ToButtonLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanelLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public removeAllButtons()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanelLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    new-instance v0, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ToButtonLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanelLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ToButtonLayout;->mToButtonPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
