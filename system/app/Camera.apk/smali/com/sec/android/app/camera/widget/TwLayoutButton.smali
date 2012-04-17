.class public Lcom/sec/android/app/camera/widget/TwLayoutButton;
.super Landroid/widget/RelativeLayout;
.source "TwLayoutButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mButtonHeight:I

.field private mButtonLeftMargin:I

.field private mButtonWidth:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonWidth:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonHeight:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonLeftMargin:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonWidth:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonHeight:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonLeftMargin:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonWidth:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonHeight:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonLeftMargin:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0, p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->performClick()Z

    :cond_0
    return v1
.end method

.method public setButtonParams(IIIIII)V
    .locals 3

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonWidth:I

    iput p2, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonHeight:I

    iput p3, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonLeftMargin:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonLeftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1, p6}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
