.class public Lcom/android/mms/ui/ToButton;
.super Landroid/widget/Button;
.source "ToButton.java"


# instance fields
.field private mIsDelete:Z

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    const v1, 0x7f020153

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ToButton;->ToBtnCreateAnim()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setAnimation(Landroid/view/animation/Animation;)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setLines(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setTextColor(I)V

    const/high16 v1, 0x4180

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setTextSize(F)V

    const/4 v1, 0x2

    invoke-virtual {p0, v4, v3, v4, v1}, Lcom/android/mms/ui/ToButton;->setPadding(IIII)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ToButton;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ToButton;->setId(I)V

    return-void
.end method

.method private ToBtnCreateAnim()Landroid/view/animation/AnimationSet;
    .locals 12

    const v1, 0x3f19999a

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v11
.end method

.method private ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;
    .locals 12

    const/high16 v6, 0x3f00

    const v2, 0x3e99999a

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v11
.end method


# virtual methods
.method public delete(Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ToButton;->ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ToButton;->getId()I

    move-result v1

    new-instance v2, Lcom/android/mms/ui/ToButton$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/mms/ui/ToButton$3;-><init>(Lcom/android/mms/ui/ToButton;Landroid/os/Handler;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ToButton;->clearAnimation()V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v3, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    return v0
.end method

.method public setFocusListen()V
    .locals 1

    new-instance v0, Lcom/android/mms/ui/ToButton$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ToButton$2;-><init>(Lcom/android/mms/ui/ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setKeyListen()V
    .locals 1

    new-instance v0, Lcom/android/mms/ui/ToButton$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ToButton$1;-><init>(Lcom/android/mms/ui/ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
