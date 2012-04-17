.class public Lcom/android/contacts/detail/ContactDetailUpdatesFragment;
.super Landroid/app/ListFragment;
.source "ContactDetailUpdatesFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/android/contacts/detail/ViewOverlay;


# instance fields
.field private mAlphaLayer:Landroid/view/View;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialAlphaValue:F

.field private mLookupUri:Landroid/net/Uri;

.field private mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

.field private final mStreamItemClickListener:Landroid/view/View$OnClickListener;

.field private final mStreamItemPhotoItemClickListener:Landroid/view/View$OnClickListener;

.field private mTouchInterceptLayer:Landroid/view/View;

.field private mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;-><init>(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemPhotoItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getAccountTypeForStreamItemEntry(Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method private getAccountTypeForStreamItemEntry(Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDataSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableTouchInterceptor()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mTouchInterceptLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enableTouchInterceptor(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mTouchInterceptLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mTouchInterceptLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public getFirstListItemOffset()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method public handleKeyDown(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04002a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mTouchInterceptLayer:Landroid/view/View;

    const v1, 0x7f0d0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mAlphaLayer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mAlphaLayer:Landroid/view/View;

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mInitialAlphaValue:F

    invoke-static {v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/contacts/detail/StreamItemAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemPhotoItemClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/detail/StreamItemAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/StreamItemAdapter;->setStreamItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public requestToMoveToOffset(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->requestToMoveToOffset(Landroid/widget/ListView;I)V

    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mAlphaLayer:Landroid/view/View;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mInitialAlphaValue:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mAlphaLayer:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mLookupUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/StreamItemAdapter;->setStreamItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
