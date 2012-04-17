.class public Lcom/android/contacts/detail/ContactDetailLayoutController;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailLayoutController$4;,
        Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;,
        Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactHasUpdates:Z

.field private mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mDetailFragmentView:Landroid/view/View;

.field private final mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

.field private final mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mTabCarouselIsAnimating:Z

.field private final mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

.field private mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

.field private mUpdatesFragmentView:Landroid/view/View;

.field private final mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

.field private mViewPagerState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$1;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$2;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$3;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot initialize a ContactDetailLayoutController without a non-null FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    iput-object p5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    const v0, 0x7f0d00aa

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0d00ab

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    const v0, 0x7f0d00ac

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    const v0, 0x7f0d00a6

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    const v0, 0x7f0d00ad

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->VIEW_PAGER_AND_TAB_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->initialize(Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->FRAGMENT_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    :goto_1
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->TWO_COLUMN:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->syncScrollStateBetweenLists(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getOffsetOfFirstItemInList(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    return v0
.end method

.method private getCurrentPageIndex()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getCurrentPage()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOffsetOfFirstItemInList(I)I
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFirstListItemOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getFirstListItemOffset()I

    move-result v0

    goto :goto_0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f0d00ad

    const v7, 0x7f0d00a6

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const/4 v1, 0x0

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v3, v4}, Lcom/android/contacts/NfcHandler;->register(Landroid/app/Activity;Lcom/android/contacts/detail/ContactDetailFragment;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v3, "contactHasUpdates"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    const-string v3, "currentPageIndex"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    sget-object v3, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithUpdates()V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04001d

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04002b

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->setAboutFragmentView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->setUpdatesFragmentView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v2, v8, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setListener(Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->restoreCurrentTab(I)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    invoke-direct {v4, p0, v6}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :pswitch_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v2, v8, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_0

    :pswitch_2
    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v2, v8, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_5
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setFragmentViews(Landroid/view/View;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setFragments(Lcom/android/contacts/detail/ViewOverlay;Lcom/android/contacts/detail/ViewOverlay;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithoutUpdates()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showContactWithUpdates()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->loadData(Lcom/android/contacts/ContactLoader$Result;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->restoreYCoordinate()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showContactWithoutUpdates()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private syncScrollStateBetweenLists(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->requestToMoveToOffset(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->requestToMoveToOffset(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    .locals 2

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPageIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid current item for ViewPager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "contactHasUpdates"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "currentPageIndex"

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setContactData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithUpdates()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithoutUpdates()V

    goto :goto_1
.end method

.method public showEmptyState()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->loadData(Lcom/android/contacts/ContactLoader$Result;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
