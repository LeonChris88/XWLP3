.class Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$700(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->fromInt(I)Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;Z)V

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v2, v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    sget-object v2, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1000(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    :cond_2
    return-void
.end method
