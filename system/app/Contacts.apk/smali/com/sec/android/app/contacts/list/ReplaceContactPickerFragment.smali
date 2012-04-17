.class public Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ReplaceContactPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDeletedItemUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mHeaderView:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

.field private mNoMatchView:Landroid/view/View;

.field private mSelectedInfoHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setQuickContactEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setDirectorySearchMode(I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setSelectAllChecked(Z)V

    return-void
.end method

.method private addContactFromSelectAll(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSelectedContact(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method private isSelectedContact(J)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshSelectAllState()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private removeContact(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method private removeContactFromSelectAll(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private setDoneButton(I)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnReplaceContactActionListener;->onAllDataDeleted()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnReplaceContactActionListener;->onOneDataInputed()V

    goto :goto_0
.end method

.method private setHeaderViewVisibility(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    const/16 v1, 0x14a

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    const/16 v1, 0x154

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSelectAllChecked(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getItemId(I)J

    move-result-wide v2

    if-nez p1, :cond_1

    invoke-direct {p0, v4, v2, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->addContactFromSelectAll(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4, v2, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->removeContactFromSelectAll(IJ)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setDisplayPhotos(Z)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setQuickContactEnabled(Z)V

    iget v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setActionCode(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0400af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    const v0, 0x7f0400b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    const/16 v1, 0x154

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setHeaderViewVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mNoMatchView:Landroid/view/View;

    return-void
.end method

.method public onDeleteResult()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mDeletedItemUri:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->start(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getItemId(I)J

    move-result-wide v1

    iget v3, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    const/16 v4, 0x154

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->isSelectedContact(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->removeContact(IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->addSelectedContact(IJ)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mActionCode:I

    const/16 v4, 0x14a

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->viewContact(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->refreshSelectAllState()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->setSelectedInfoHashSet(Ljava/util/HashSet;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setDoneButton(I)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->refreshSelectAllState()V

    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-void
.end method

.method public setOnReplaceContactActionListener(Lcom/android/contacts/list/OnReplaceContactActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mNoMatchView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setHeaderViewVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setHeaderViewVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setHeaderViewVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setHeaderViewVisibility(I)V

    goto :goto_0
.end method

.method public viewContact(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->mListener:Lcom/android/contacts/list/OnReplaceContactActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnReplaceContactActionListener;->onViewContactAction(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
