.class public Lcom/android/contacts/detail/ContactDetailTabCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ContactDetailTabCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAboutTab:Lcom/android/contacts/detail/CarouselTab;

.field private final mAboutTabTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mAllowedHorizontalScrollLength:I

.field private mAllowedVerticalScrollLength:I

.field private mCurrentTab:I

.field private mLastScrollPosition:I

.field private mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mScrollToCurrentTab:Z

.field private mStatusPhotoView:Landroid/widget/ImageView;

.field private mStatusView:Landroid/widget/TextView;

.field private mTabDisplayLabelHeight:I

.field private mTabHeightScreenWidthFraction:F

.field private mTabWidthScreenWidthFraction:F

.field private mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

.field private final mUpdatesTabTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private final mYCoordinateArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    new-instance v1, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailTabCarousel$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel$2;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setEnableBounce(Z)V

    invoke-virtual {p0, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailTabCarousel;)Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    return-object v0
.end method

.method private updateAlphaLayers()V
    .locals 4

    const/high16 v3, 0x3f00

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setAlphaLayerValue(F)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setAlphaLayerValue(F)V

    return-void
.end method


# virtual methods
.method public getAllowedHorizontalScrollLength()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    return v0
.end method

.method public getAllowedVerticalScrollLength()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    return v0
.end method

.method public getStoredYCoordinateForTab(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aget v0, v0, p1

    return v0
.end method

.method public loadData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setPhoto(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public moveToYCoordinate(IF)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setY(F)V

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/CarouselTab;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;)V

    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/CarouselTab;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0d0087

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0d008d

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0d008c

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchDown()V

    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->scrollTo(II)V

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x4000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v3, v4

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v4, v1

    iget v5, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v4, v3, 0x2

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    :cond_0
    iget v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    sub-int v4, v2, v4

    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    invoke-static {v1, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->resolveSize(II)I

    move-result v4

    invoke-static {v2, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onScrollChanged(IIII)V

    iput p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p2}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchDown()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchUp()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public restoreCurrentTab(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setCurrentTab(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    return-void
.end method

.method public restoreYCoordinate()V
    .locals 1

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getStoredYCoordinateForTab(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setY(F)V

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tab position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showSelectedState()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showDeselectedState()V

    :goto_0
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showSelectedState()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showDeselectedState()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    return-void
.end method

.method public storeYCoordinate(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aput p2, v0, p1

    return-void
.end method
