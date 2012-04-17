.class public Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;
.super Ljava/lang/Object;
.source "DialtactsListSweepActionHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# instance fields
.field private mCallBackground:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasPhoneNumber:Z

.field private mLastDrawRectHeight:I

.field private mLastDrawRectWidth:I

.field private mLastDrawVisible:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mMessageBackground:Landroid/graphics/drawable/Drawable;

.field private mMessageIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageText:Ljava/lang/String;

.field private mNoNumberText:Ljava/lang/String;

.field private mSweepAactionBbarRightPadding:I

.field private mSweepActionBarLeftPadding:I

.field private mSweepActionBarTextSize:I

.field private mSweepActionBarTopPadding:I

.field private mVisibleScrollBarPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectHeight:I

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectWidth:I

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawVisible:I

    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020216

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVisibleScrollBarPadding:I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTopPadding:I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0216

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    return-void
.end method

.method private drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 9

    const/high16 v5, 0x3fa0

    const v6, 0x3e4ccccd

    sub-float v6, p3, v6

    mul-float v0, v5, v6

    float-to-double v5, v0

    const-wide v7, 0x3fa999999999999aL

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v3, v5

    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v2, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    new-instance v4, Landroid/graphics/Paint;

    const/16 v5, 0x101

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    add-int v3, v5, v6

    shl-int/lit8 v5, v2, 0x18

    add-int/lit8 v2, v5, 0x0

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x4040

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p1, p2, p4, p5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private setupDrawablesBounds(II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getHasPhoneNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    return v0
.end method

.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 7

    const/4 v3, 0x0

    const-string v4, "DialtactsListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDefineSweepAction: ItemIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DialtactsListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDefineSweepAction: ListView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DialtactsListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDefineSweepAction: ChildCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v4, 0x7f0d0075

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "DialtactsListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boram test =======>>>listItem=  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", listItemWithoutHeaderAndBottomDivider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 12

    const-string v1, "DialtactsListSweepActionHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawSweepActionBar() / itemIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rect.height====>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v9, 0x1

    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_5

    const/4 v8, 0x1

    :goto_1
    const/4 v7, 0x0

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v1, v7}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->setupDrawablesBounds(II)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectWidth:I

    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_7

    move/from16 v0, p4

    invoke-virtual {p0, p2, p3, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->onListShouldDrawSelector(IFI)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v9, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_b

    move v4, p3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x434c

    const v3, 0x424bffff

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    neg-float v1, v4

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v8, :cond_9

    const/high16 v1, 0x3f80

    const/high16 v2, 0x40a0

    mul-float/2addr v2, v4

    sub-float v10, v1, v2

    float-to-double v1, v10

    const-wide v5, 0x3fa999999999999aL

    cmpg-double v1, v1, v5

    if-gez v1, :cond_8

    const/4 v10, 0x0

    :cond_8
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageText:Ljava/lang/String;

    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_3

    :cond_b
    const/high16 v1, -0x4080

    mul-float v4, v1, p3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x434c

    const v3, 0x424bffff

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v8, :cond_d

    const/high16 v1, 0x3f80

    const/high16 v2, 0x40a0

    mul-float/2addr v2, v4

    sub-float v10, v1, v2

    float-to-double v1, v10

    const-wide v5, 0x3fa999999999999aL

    cmpg-double v1, v1, v5

    if-gez v1, :cond_c

    const/4 v10, 0x0

    :cond_c
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_d
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_4
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasPhoneNumber(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    return-void
.end method
