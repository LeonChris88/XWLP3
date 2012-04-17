.class public Lcom/android/mms/ui/SplitManager;
.super Ljava/lang/Object;
.source "SplitManager.java"


# static fields
.field private static SPLIT_BAR_DEFAULT_POSITION:I


# instance fields
.field mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

.field private mCount:I

.field private mDensity:F

.field private mEndX:I

.field private mIsAnimationEnable:Z

.field private mLeftView:Landroid/view/View;

.field private mMaxX:I

.field private mMinX:I

.field private mOffset:I

.field private mOnAnimate:Z

.field private mRightView:Landroid/view/View;

.field private mSplitBar:Landroid/view/View;

.field private mSplitBarMargin:I

.field private mSplitMode:I

.field private mStartX:I

.field private mUseSplitMode:Z

.field private mWidth:I

.field private mX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x140

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    iput-object p1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    iput-object p4, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    :cond_0
    const/high16 v1, 0x4120

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMinX:I

    const/high16 v1, 0x4420

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMaxX:I

    const/high16 v1, 0x4180

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarMargin:I

    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->loadSplitPosition()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SplitManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SplitManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return p1
.end method

.method static synthetic access$112(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SplitManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$828(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v0

    return v0
.end method

.method private animationLayout()Z
    .locals 4

    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v1, Lcom/android/mms/ui/SplitManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SplitManager$1;-><init>(Lcom/android/mms/ui/SplitManager;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadSplitPosition()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    :cond_0
    sget v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    return-void
.end method


# virtual methods
.method public UpdateSplitPosition(I)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    add-int v0, v2, p1

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mMinX:I

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mMaxX:I

    if-gt v0, v2, :cond_0

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v1

    goto :goto_0
.end method

.method public getAnimationEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    return v0
.end method

.method public getSplitMode()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    return v0
.end method

.method public refreshLayouts()Z
    .locals 7

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    :goto_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    neg-int v3, v0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->ShowSipOnComposeMessage()V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    iget-object v4, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int v3, v2, v3

    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarMargin:I

    add-int/2addr v3, v4

    neg-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveSplitPosition()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_splitbar_position"

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    return-void
.end method

.method public setSplitMode(IZ)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    if-nez v1, :cond_3

    :cond_2
    iput-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    iput v3, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne v1, v3, :cond_5

    const/16 v1, -0x28

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    neg-int v0, v0

    goto :goto_1

    :cond_5
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    goto :goto_2
.end method

.method public setUseSplitMode(Z)V
    .locals 4

    const/4 v2, -0x1

    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const-string v1, "Mms/SplitManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseSplitMode usesplitMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 3

    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    const-string v0, "Mms/SplitManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWidth width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
