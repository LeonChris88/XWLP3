.class public Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;
.super Landroid/app/Fragment;
.source "DialtactsListFragment.java"


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Lcom/sec/android/touchwiz/widget/TwListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$1;-><init>(Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mRequestFocus:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$2;-><init>(Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mOnClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content view not yet created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    instance-of v3, v2, Lcom/sec/android/touchwiz/widget/TwListView;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwListView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    :cond_2
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListShown:Z

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mOnClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    const v3, 0x10202d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyView:Landroid/view/View;

    :goto_3
    const v3, 0x10202d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    const v3, 0x10202d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/sec/android/touchwiz/widget/TwListView;

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-direct {p0, v5, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->setListShown(ZZ)V

    goto/16 :goto_2
.end method

.method private setListShown(ZZ)V
    .locals 6

    const v5, 0x10a0001

    const/high16 v4, 0x10a

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->ensureList()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListShown:Z

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListShown:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x1090014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListShown:Z

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyView:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onListItemClick(Lcom/sec/android/touchwiz/widget/TwListView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->ensureList()V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListShown:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->setListShown(ZZ)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
