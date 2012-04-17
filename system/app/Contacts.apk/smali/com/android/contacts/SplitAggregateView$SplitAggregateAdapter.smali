.class Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SplitAggregateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SplitAggregateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitAggregateAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/SplitAggregateView$RawContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/SplitAggregateView;


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400c7

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;-><init>(Lcom/android/contacts/SplitAggregateView$1;)V

    const v4, 0x7f0d0095

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->name:Landroid/widget/TextView;

    const v4, 0x7f0d0218

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->additionalData:Landroid/widget/TextView;

    const v4, 0x7f0d0217

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->sourceIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/SplitAggregateView$RawContactInfo;

    iget-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->name:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->additionalData:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->getAdditionalData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;->this$0:Lcom/android/contacts/SplitAggregateView;

    invoke-static {v4}, Lcom/android/contacts/SplitAggregateView;->access$200(Lcom/android/contacts/SplitAggregateView;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    iget-object v5, v3, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    iget-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->sourceIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p2

    :cond_3
    iget-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->sourceIcon:Landroid/widget/ImageView;

    const v5, 0x7f02023a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
