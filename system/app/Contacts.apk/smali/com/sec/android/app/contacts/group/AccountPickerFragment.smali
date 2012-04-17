.class public Lcom/sec/android/app/contacts/group/AccountPickerFragment;
.super Landroid/app/Fragment;
.source "AccountPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;,
        Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;
    }
.end annotation


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mHeaderView:Landroid/view/View;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

.field private mRootView:Landroid/view/View;

.field private mSelectedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    return-object v0
.end method

.method private addAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAccountWithDataSet()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAllGoogleAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v4, "com.google"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private removeAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeAllAccountWithDataSet()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 5

    const v4, 0x7f0d0090

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onDoneButtonStateUpdated(Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v1, v3}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    const v2, 0x7f040016

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;-><init>(Lcom/sec/android/app/contacts/group/AccountPickerFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f040080

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    const v0, 0x7f0400b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->updateHeaderViewAndDoneButton()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onSelectedAction(Ljava/util/List;)V

    :cond_0
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

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0d0090

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->removeAllAccountWithDataSet()V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->updateHeaderViewAndDoneButton()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->addAllAccountWithDataSet()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v1, p3, v3

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->removeAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->addAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method public onRevertAction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onRevertAction()V

    :cond_0
    return-void
.end method

.method public setAccountPickerActionListener(Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    return-void
.end method

.method public setSelectedAccounts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    goto :goto_0
.end method
