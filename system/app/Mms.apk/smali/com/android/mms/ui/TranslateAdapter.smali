.class public Lcom/android/mms/ui/TranslateAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TranslateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEndRecent:Z

.field private mIsFrom:Z

.field private mIsSwitched:Z

.field private mLanguageStrings:[Ljava/lang/String;

.field private mRecentCount:I

.field private mRecentKeys:[Ljava/lang/String;

.field mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput v1, p0, Lcom/android/mms/ui/TranslateAdapter;->mRecentCount:I

    iput-boolean v1, p0, Lcom/android/mms/ui/TranslateAdapter;->mIsEndRecent:Z

    iput-object p1, p0, Lcom/android/mms/ui/TranslateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateAdapter;->mLanguageStrings:[Ljava/lang/String;

    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateAdapter;->mRecentKeys:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/mms/ui/TranslateAdapter;->mIsEndRecent:Z

    iput-boolean p5, p0, Lcom/android/mms/ui/TranslateAdapter;->mIsFrom:Z

    iput-boolean p6, p0, Lcom/android/mms/ui/TranslateAdapter;->mIsSwitched:Z

    new-instance v0, Lcom/android/mms/util/TranslateLanguages;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mms/util/TranslateLanguages;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateAdapter;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v7, 0x7f0901d2

    const/4 v6, 0x0

    move-object v2, p2

    iget-object v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    if-nez v2, :cond_0

    const v4, 0x7f030034

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :cond_0
    const v4, 0x7f0800b3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0800b4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mIsEndRecent:Z

    if-nez v4, :cond_1

    const/4 v4, 0x3

    if-ge p1, v4, :cond_1

    const-string v4, "EMPTY"

    iget-object v5, p0, Lcom/android/mms/ui/TranslateAdapter;->mRecentKeys:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mRecentCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mRecentCount:I

    iget-object v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v5, p0, Lcom/android/mms/ui/TranslateAdapter;->mRecentKeys:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object v2

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mIsEndRecent:Z

    iget v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mRecentCount:I

    if-le v4, p1, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v5, p0, Lcom/android/mms/ui/TranslateAdapter;->mRecentKeys:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mLanguageStrings:[Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/ui/TranslateAdapter;->mRecentCount:I

    sub-int v5, p1, v5

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, p0, Lcom/android/mms/ui/TranslateAdapter;->mIsSwitched:Z

    iget-boolean v5, p0, Lcom/android/mms/ui/TranslateAdapter;->mIsFrom:Z

    if-ne v4, v5, :cond_3

    const-string v4, "a-d"

    iget-object v5, p0, Lcom/android/mms/ui/TranslateAdapter;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateAdapter;->mLanguageStrings:[Ljava/lang/String;

    iget v7, p0, Lcom/android/mms/ui/TranslateAdapter;->mRecentCount:I

    sub-int v7, p1, v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/mms/util/TranslateLanguages;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0901d3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
