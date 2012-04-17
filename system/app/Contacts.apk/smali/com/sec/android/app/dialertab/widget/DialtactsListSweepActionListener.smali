.class public Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;
.super Ljava/lang/Object;
.source "DialtactsListSweepActionListener.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mCallType:I

.field private mContext:Landroid/content/Context;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwListView;",
            "Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mCallType:I

    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    iput-object p4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-void
.end method


# virtual methods
.method public onSweepActionCanceled(I)V
    .locals 3

    const-string v0, "DialtactsListSweepActionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled() / itemIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "DialtactsListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionFired() / itemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flickDirection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v5, p2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 5

    const-string v2, "DialtactsListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / itemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0082

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->setHasPhoneNumber(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto :goto_0
.end method
