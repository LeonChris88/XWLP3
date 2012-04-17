.class Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
.super Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;
.source "PeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mTabPagerAdapterSearchMode:Z

.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->values()[Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v0

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-object v0
.end method

.method public isSearchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setSearchMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method
