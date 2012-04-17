.class public Lcom/sec/android/app/contacts/widget/ContactsViewPager;
.super Landroid/view/ViewGroup;
.source "ContactsViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$SimpleOnPageChangeListener;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->initViewPager()V

    return-void
.end method

.method private completeScroll()V
    .locals 9

    const/4 v8, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollY()I

    move-result v4

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    :cond_1
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget-boolean v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    iput-boolean v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    :cond_5
    return-void
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11

    const/4 v2, 0x0

    add-int v10, p1, p3

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v7

    add-int v8, p2, p4

    div-int v6, v7, v8

    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    mul-int/2addr v3, v10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    mul-int v1, v0, v10

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v5, 0x6

    if-eq v1, v5, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/high16 v5, 0x4

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_5
    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;-><init>()V

    iput p1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    if-gez p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 6

    const/16 v5, 0x42

    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    if-ne p1, v4, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageLeft()Z

    move-result v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->playSoundEffect(I)V

    :cond_2
    return v1

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    :cond_4
    if-ne p1, v5, :cond_1

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageRight()Z

    move-result v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageLeft()Z

    move-result v1

    goto :goto_0

    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 10

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollY()I

    move-result v3

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int v5, v8, v9

    div-int v4, v6, v5

    rem-int v1, v6, v5

    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->invalidate()V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    move v2, v5

    :goto_0
    const/4 v3, -0x1

    const/4 v0, 0x0

    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    const/4 v7, -0x2

    if-ne v4, v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v9, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    const/4 v2, 0x1

    iget v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    :cond_3
    iget v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-eq v7, v4, :cond_0

    iget v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_4

    move v3, v4

    :cond_4
    iput v4, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v8, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-ltz v3, :cond_6

    invoke-virtual {p0, v3, v6, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->requestLayout()V

    :cond_7
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v3

    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v6, v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWidth()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v1

    :cond_2
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v1

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->invalidate()V

    :cond_4
    return-void

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setWillNotDraw(Z)V

    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setDescendantFocusability(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMaximumVelocity:I

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    rem-int v1, v2, v4

    if-eqz v1, :cond_0

    sub-int v4, v2, v1

    add-int v0, v4, v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getHeight()I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v3

    sub-int v7, p4, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v8, v7

    iget v9, v5, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    mul-int v6, v8, v9

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    invoke-static {v5, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDefaultSize(II)I

    move-result v3

    invoke-static {v5, p2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDefaultSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    iput-boolean v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v1

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    const/4 v5, 0x1

    move v2, v1

    :goto_0
    move v3, v6

    :goto_1
    if-eq v3, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v7, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_2
    return v7

    :cond_0
    add-int/lit8 v6, v1, -0x1

    const/4 v5, -0x1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v1, p1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iput v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method pageLeft()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 15

    const/4 v11, 0x0

    const/4 v12, -0x1

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    const/4 v10, 0x0

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    sub-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v7, -0x1

    const/4 v5, 0x0

    :goto_0
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-lt v10, v9, :cond_2

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-le v10, v4, :cond_4

    :cond_2
    iget-boolean v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v13, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v14, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v13, v14}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    :cond_3
    iget v7, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-ge v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-le v10, v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v9, :cond_5

    move v7, v9

    :cond_5
    :goto_1
    if-gt v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_3

    invoke-virtual {p0, v7, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->addNewItem(II)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget v7, v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    :goto_2
    if-ge v7, v4, :cond_9

    add-int/lit8 v7, v7, 0x1

    if-le v7, v9, :cond_8

    :goto_3
    if-gt v7, v4, :cond_9

    invoke-virtual {p0, v7, v12}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->addNewItem(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v7, v12

    goto :goto_2

    :cond_8
    move v7, v9

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget v10, v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v12, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v10, v12, :cond_d

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    :cond_a
    iget-object v12, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eqz v2, :cond_e

    iget-object v10, v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v12, p0, v13, v10}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->findFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v6

    :goto_6
    if-eqz v6, :cond_b

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eq v10, v11, :cond_0

    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_c

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v10, v11, :cond_c

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object v10, v11

    goto :goto_5

    :cond_f
    move-object v6, v11

    goto :goto_6
.end method

.method public setAdapter(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v3, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v4, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->removeAllViews()V

    iput v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    invoke-virtual {p0, v5, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    if-nez v2, :cond_2

    new-instance v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;-><init>(Lcom/sec/android/app/contacts/widget/ContactsViewPager;Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;)V

    iput-boolean v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    iput-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_3

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_4
    :goto_1
    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/2addr v4, v3

    if-gt p1, v4, :cond_5

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    sub-int/2addr v4, v3

    if-ge p1, v4, :cond_7

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iput-boolean v1, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    goto :goto_1

    :cond_7
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eq v4, p1, :cond_8

    :goto_3
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v4, v6

    mul-int v0, v4, p1

    if-eqz p2, :cond_9

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->smoothScrollTo(II)V

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    :cond_8
    move v1, v5

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollY()I

    move-result v3

    sub-int v0, p1, v2

    sub-int v1, p2, v3

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    iput-boolean v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->invalidate()V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
