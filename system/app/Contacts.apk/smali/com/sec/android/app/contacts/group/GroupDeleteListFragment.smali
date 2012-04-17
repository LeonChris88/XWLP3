.class public Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
.super Landroid/app/Fragment;
.source "GroupDeleteListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;,
        Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
    }
.end annotation


# static fields
.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

.field private final mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mGroupsToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderView:Landroid/view/View;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->configureEmptyView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->updateHeaderViewAndDoneButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private addAllGroup()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addGroup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 5

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f0d0227

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method private dismissProgress()V
    .locals 3

    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const-string v1, "GroupDeleteListFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "GroupDeleteListFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GroupDeleteListFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeAllGroup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private removeGroup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 5

    const v4, 0x7f0d0090

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    invoke-interface {v1, v3}, Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f040080

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    const v0, 0x7f0400b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->dismissProgress()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDoneClicked()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->show(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0d0090

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->removeAllGroup()V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->updateHeaderViewAndDoneButton()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->addAllGroup()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v0, p3, v3

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->removeGroup(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->addGroup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRevertAction()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public setActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    return-void
.end method
