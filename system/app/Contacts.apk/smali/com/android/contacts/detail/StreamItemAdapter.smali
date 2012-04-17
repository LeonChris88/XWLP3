.class public Lcom/android/contacts/detail/StreamItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "StreamItemAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemClickListener:Landroid/view/View$OnClickListener;

.field private final mPhotoClickListener:Landroid/view/View$OnClickListener;

.field private mStreamItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    add-int/lit8 v1, p1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p1, :cond_0

    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400d8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040096

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0d0114

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0a016e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/StreamItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/StreamItemEntry;

    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/contacts/util/StreamItemEntry;->getAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/contacts/util/StreamItemEntry;->getDataSet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    iget-object v8, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v9, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewStreamItemPhotoActivity()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_1
    invoke-static {v8, v9, v3, v10, v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->createStreamItemView(Landroid/view/LayoutInflater;Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0d021d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewStreamItemActivity()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    move-object v5, v6

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setStreamItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/detail/StreamItemAdapter;->mStreamItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/contacts/detail/StreamItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
