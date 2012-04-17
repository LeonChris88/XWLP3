.class public Lcom/android/mms/ui/SweepHandler;
.super Ljava/lang/Object;
.source "SweepHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# instance fields
.field private currentIndex:I

.field private isCallable:Z

.field private mCallBg:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mConversationList:Lcom/android/mms/ui/ConversationListFragment;

.field private mDensityScale:F

.field private mLastDrawRcHeight:I

.field private mLastDrawRcWidth:I

.field private mMsgBg:Landroid/graphics/drawable/Drawable;

.field private mMsgIcon:Landroid/graphics/drawable/Drawable;

.field private mMsgText:Ljava/lang/String;

.field private mTempRect:Landroid/graphics/Rect;

.field private mWidthPadding:I

.field private mWrongCallText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    iput-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    iput-object p1, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->initResources()V

    return-void
.end method

.method private adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SweepHandler"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SweepHandler"

    const-string v1, "adjustDrawableBound"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x4120

    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 9

    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    const/high16 v5, 0x41c8

    iget v6, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float v4, v5, v6

    new-instance v3, Landroid/graphics/Paint;

    const/16 v6, 0x101

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "opa = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/high16 v6, 0x437f

    mul-float/2addr v6, p3

    float-to-int v2, v6

    const/high16 v6, 0x437f

    mul-float/2addr v6, p3

    float-to-int v0, v6

    shl-int/lit8 v6, v2, 0x18

    const v7, 0xffffff

    add-int v2, v6, v7

    shl-int/lit8 v6, v0, 0x18

    add-int/lit8 v0, v6, 0x0

    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "textcolor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shadowColor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x4040

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-virtual {v3, v6, v7, v8, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v6, 0x4040

    div-float v6, v5, v6

    iget v7, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float/2addr v6, v7

    add-float/2addr v6, p5

    invoke-virtual {p1, p2, p4, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private getCallBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getCallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMsgBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMsgIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private initResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mWrongCallText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    return-void
.end method

.method private setupDrawablesBound(II)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SweepHandler"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SweepHandler"

    const-string v2, "setupDrawablesBound"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 v1, 0x40e0

    iget v2, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p2, v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method


# virtual methods
.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationListFragment;->isConversationIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    :goto_0
    return-object v0

    :cond_0
    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 18

    new-instance v16, Ljava/lang/StringBuffer;

    const/16 v2, 0x32

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "onDrawSweepActionBar(), itemIndex:"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "sweepProgress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", sweepState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "SweepHandler"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_b

    const/4 v13, 0x1

    :goto_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    const/4 v15, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    const/4 v15, 0x1

    :cond_1
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/SweepHandler;->setupDrawablesBound(II)V

    :cond_2
    const v10, 0x3f4ccccd

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ConversationListFragment;->getNumber(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    :cond_4
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-nez v2, :cond_5

    const-string v2, "SweepHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepDraw start :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/high16 v2, 0x3f80

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_6

    const/high16 v2, -0x4080

    cmpl-float v2, p3, v2

    if-nez v2, :cond_7

    :cond_6
    const-string v2, "SweepHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepDraw done :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_e

    move/from16 v14, p3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v17

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x434c

    const v4, 0x424bffff

    mul-float/2addr v4, v14

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    neg-float v2, v14

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v13, :cond_9

    const v8, 0x3e4ccccd

    const/high16 v2, 0x3f80

    const/high16 v3, 0x40a0

    mul-float/2addr v3, v14

    sub-float v5, v2, v3

    float-to-double v2, v5

    const-wide v6, 0x3fa999999999999aL

    cmpg-double v2, v2, v6

    if-gez v2, :cond_8

    const/4 v5, 0x0

    :cond_8
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v17

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x437f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const v12, 0x3e4ccccd

    const/high16 v2, 0x3fa0

    const v3, 0x3e4ccccd

    sub-float v3, v14, v3

    mul-float v5, v2, v3

    float-to-double v2, v5

    const-wide v6, 0x3fa999999999999aL

    cmpg-double v2, v2, v6

    if-gez v2, :cond_d

    const/4 v5, 0x0

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SweepHandler;->mMsgText:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    :goto_3
    return-void

    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    float-to-double v2, v5

    const-wide v6, 0x3fe999999999999aL

    cmpl-double v2, v2, v6

    if-lez v2, :cond_a

    const/high16 v5, 0x3f80

    goto :goto_2

    :cond_e
    const/high16 v2, -0x4080

    mul-float v14, v2, p3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v17

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x434c

    const v4, 0x424bffff

    mul-float/2addr v4, v14

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, v14, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v17

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v13, :cond_10

    const v11, 0x3e4ccccd

    const/high16 v2, 0x3f80

    const/high16 v3, 0x40a0

    mul-float/2addr v3, v14

    sub-float v5, v2, v3

    float-to-double v2, v5

    const-wide v6, 0x3fa999999999999aL

    cmpg-double v2, v2, v6

    if-gez v2, :cond_f

    const/4 v5, 0x0

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x437f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    const v9, 0x3e4ccccd

    const/high16 v2, 0x3fa0

    const v3, 0x3e4ccccd

    sub-float v3, v14, v3

    mul-float v5, v2, v3

    float-to-double v2, v5

    const-wide v6, 0x3fa999999999999aL

    cmpg-double v2, v2, v6

    if-gez v2, :cond_12

    const/4 v5, 0x0

    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_3

    :cond_12
    float-to-double v2, v5

    const-wide v6, 0x3fe999999999999aL

    cmpl-double v2, v2, v6

    if-lez v2, :cond_11

    const/high16 v5, 0x3f80

    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SweepHandler;->mWrongCallText:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_3
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SweepHandler"

    invoke-static {v1, v0}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SweepHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShouldDrawSelector(), itemIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
