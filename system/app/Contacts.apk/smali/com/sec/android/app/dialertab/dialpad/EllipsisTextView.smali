.class public Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
.super Landroid/widget/EditText;
.source "EllipsisTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

.field private mEllipsized:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mScaleTextSize:F

.field private mScaledDensity:F

.field private mScaledWidth:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    const/high16 v0, 0x4236

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setInputType(I)V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    const/high16 v0, 0x4236

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setInputType(I)V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    const/high16 v0, 0x4236

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setInputType(I)V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    return p1
.end method

.method private initWidget()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v0, v3

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getTextSize()F

    move-result v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    div-float v7, v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    if-ge p3, p4, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v7, v0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setTextSize(F)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v8, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    cmpl-float v0, v6, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    :cond_3
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v7, v0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setTextSize(F)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v8, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    cmpl-float v0, v6, v2

    if-lez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v7, v0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setTextSize(F)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v8, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    goto :goto_0

    :cond_4
    cmpg-float v0, v6, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return v1
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v2, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-le v2, v0, :cond_1

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1
.end method

.method public setScaledDensity(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    return-void
.end method

.method public setScaledWidth(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    return-void
.end method
