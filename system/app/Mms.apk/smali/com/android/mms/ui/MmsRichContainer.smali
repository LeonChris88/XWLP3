.class public Lcom/android/mms/ui/MmsRichContainer;
.super Landroid/widget/LinearLayout;
.source "MmsRichContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;,
        Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;,
        Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
    }
.end annotation


# instance fields
.field private mCursorColor:I

.field private mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mHandler:Landroid/os/Handler;

.field private mHintResId:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMediaTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentTextWatcher:Landroid/text/TextWatcher;

.field private mSystemFontSize:I

.field private mTextColor:I

.field private mTextSize:F

.field mTextTop:Ljava/lang/Boolean;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mSystemFontSize:I

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mSystemFontSize:I

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method private getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2

    const v1, 0x7f080087

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2

    const v1, 0x7f080082

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2

    const v1, 0x7f08008a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getSystemFontSize()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mSystemFontSize:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    return-void
.end method

.method private getVisibleEditText(IZ)Landroid/widget/EditText;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f080081

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v4, 0x7f080086

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    move-object v3, v2

    :goto_1
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    const/high16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setCursorColor(I)V

    return-object v3

    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    move-object v3, v0

    goto :goto_1
.end method

.method private pageHasContents(Landroid/view/View;Z)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const v5, 0x7f080082

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    const v5, 0x7f080087

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private resetLayoutAttr()V
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v5

    move v2, v5

    :goto_0
    if-lez v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-direct {p0, v8, v10}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    const/high16 v7, 0x3f80

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    invoke-virtual {p0, v8, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    return-void
.end method

.method private resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V
    .locals 5

    const/16 v4, 0x8

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    return-void
.end method

.method private setAddAnimation()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f04

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private setDeleteAnimation(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer$6;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private setWeight(Landroid/view/View;F)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addPage(I)V
    .locals 9

    const/16 v8, 0x8

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f03001f

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v8, p1}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/high16 v6, 0x200

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    const v6, 0x7f080083

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x7f080087

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v4, p1, v5}, Lcom/android/mms/ui/MmsRichContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2

    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "addTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public changeLayout(Lcom/android/mms/data/WorkingMessage;)V
    .locals 11

    const/4 v10, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f80

    invoke-direct {p0, v8, v9}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    const/4 v8, 0x1

    invoke-virtual {p0, v2, v8}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v8, :cond_4

    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_1
.end method

.method public getEditText(Landroid/view/View;)Landroid/widget/EditText;
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080081

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    :goto_0
    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorColor(I)V

    return-object v0

    :cond_0
    const v1, 0x7f080086

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0
.end method

.method public getFocusedEditText()Landroid/widget/EditText;
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocusedSlideIndex()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    sget v2, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v0, v2, :cond_0

    sget v0, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getMMSLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPageCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    return v0
.end method

.method public hasContents(Z)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public initContainer()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    const/high16 v1, -0x100

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public removePage(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, p1, -0x1

    if-gez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2

    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "removeTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    :cond_0
    return-void
.end method

.method public setAudioAndKeyListener(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x7

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v2, 0x7f080089

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public setCursorColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    return-void
.end method

.method public setEditTextCharMaxInputFilter(Landroid/text/InputFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setFocusEditText()V
    .locals 2

    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setFocusEditText() on first"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    return-void
.end method

.method public setFocusEditText(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public setFocusEditText(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setHint()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHintRes(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    return-void
.end method

.method public setImageAndKeyListener(Landroid/graphics/Bitmap;I)V
    .locals 9

    const/4 v8, 0x5

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const v5, 0x7f080083

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f080084

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f080085

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020110

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    new-instance v5, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v5, p0, v8, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v5, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v5, p0, v8, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :catch_0
    move-exception v1

    const-string v5, "Mms/MmsRichContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLastElementFocus(Landroid/view/ViewGroup;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    instance-of v3, v1, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public setMMSLayout(Z)V
    .locals 2

    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setMMSLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method public setPageDivider(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v3, 0x7f08008b

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    if-eq v3, v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1, p3}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextSize:F

    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSystemFontSize()V

    return-void
.end method

.method public setVideoAndKeyListener(Landroid/net/Uri;I)V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x0

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const v6, 0x7f080083

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f080084

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v6, 0x7f080085

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020111

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02005d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v6, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :catch_0
    move-exception v2

    const-string v6, "Mms/MmsRichContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;I)V
    .locals 15

    const-string v12, "Mms/MmsRichContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update(),type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v12

    if-eqz v12, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v12

    if-ge v12, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v12

    if-le v12, v8, :cond_1

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_2

    const/4 v12, 0x0

    invoke-virtual {p0, v4, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    :cond_2
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const/high16 v13, 0x3f80

    invoke-direct {p0, v12, v13}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    const/16 v12, 0xc

    move/from16 v0, p2

    if-eq v0, v12, :cond_3

    const/16 v12, 0x10

    move/from16 v0, p2

    if-ne v0, v12, :cond_d

    :cond_3
    const/4 v12, 0x1

    invoke-virtual {p0, v6, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    :cond_4
    :goto_3
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, ""

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    :goto_4
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    const/4 v12, -0x1

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    :cond_5
    const/16 v12, 0xc

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->setAddAnimation()V

    :cond_6
    :goto_5
    return-void

    :cond_7
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {p0, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setImageAndKeyListener(Landroid/graphics/Bitmap;I)V

    :cond_8
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getVideoUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {p0, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setVideoAndKeyListener(Landroid/net/Uri;I)V

    :cond_9
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setAudioAndKeyListener(Ljava/lang/String;I)V

    :cond_a
    const/4 v12, 0x1

    invoke-direct {p0, v4, v12}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    new-instance v12, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v13, 0x8

    invoke-direct {v12, p0, v13, v4}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_6
    invoke-direct {p0, v7, v4}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0, v5, v10, v4}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_6

    :cond_c
    const-string v12, ""

    invoke-virtual {p0, v5, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_6

    :cond_d
    const/16 v12, 0xe

    move/from16 v0, p2

    if-ne v0, v12, :cond_f

    iget-object v12, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    invoke-virtual {p0, v6, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_3

    :cond_e
    const/4 v12, 0x0

    invoke-virtual {p0, v6, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_3

    :cond_f
    const/16 v12, 0xd

    move/from16 v0, p2

    if-ne v0, v12, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    goto/16 :goto_3

    :cond_10
    iget v12, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v12, :cond_11

    const-string v12, ""

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_11
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_4

    :cond_12
    const/16 v12, 0xd

    move/from16 v0, p2

    if-ne v0, v12, :cond_13

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setSelection(I)V

    const/high16 v12, 0x3f80

    invoke-direct {p0, v3, v12}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_5

    :cond_13
    const/16 v12, 0xf

    move/from16 v0, p2

    if-ne v0, v12, :cond_14

    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_5

    :cond_14
    const/16 v12, 0xc

    move/from16 v0, p2

    if-eq v0, v12, :cond_15

    const/16 v12, 0x10

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    :cond_15
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_16

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_17

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    :goto_7
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    :cond_17
    const-string v12, ""

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_7
.end method
