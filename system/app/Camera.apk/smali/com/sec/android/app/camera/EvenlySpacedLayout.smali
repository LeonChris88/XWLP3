.class public Lcom/sec/android/app/camera/EvenlySpacedLayout;
.super Landroid/view/ViewGroup;
.source "EvenlySpacedLayout.java"


# instance fields
.field private mHorizontal:Z

.field private mKeepEndSpace:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v3, Lcom/sec/android/app/camera/R$styleable;->EvenlySpacedLayout:[I

    invoke-virtual {p1, p2, v3, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mHorizontal:Z

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private layoutHorizontal(ZIIII)V
    .locals 12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildCount()I

    move-result v1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    sub-int v10, p4, p2

    sub-int v11, v10, v8

    iget-boolean v10, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v10, :cond_3

    add-int/lit8 v10, v7, 0x1

    :goto_2
    div-int v5, v11, v10

    if-gez v5, :cond_2

    const/4 v5, 0x0

    :cond_2
    iget-boolean v10, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v10, :cond_4

    move v4, v5

    :goto_3
    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v7, -0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v9, v7

    add-int v10, v4, v9

    add-int v11, v6, v2

    invoke-virtual {v0, v4, v6, v10, v11}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v4, v9

    add-int/2addr v4, v5

    goto :goto_5

    :cond_6
    return-void
.end method

.method private layoutVertical(ZIIII)V
    .locals 12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildCount()I

    move-result v1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    sub-int v10, p5, p3

    sub-int v11, v10, v8

    iget-boolean v10, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v10, :cond_2

    add-int/lit8 v10, v7, 0x1

    :goto_2
    div-int v5, v11, v10

    iget-boolean v10, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v10, :cond_3

    move v6, v5

    :goto_3
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_4

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v10, v7, -0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v10, v4, v9

    add-int v11, v6, v2

    invoke-virtual {v0, v4, v6, v10, v11}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v6, v2

    add-int/2addr v6, v5

    goto :goto_5

    :cond_5
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mHorizontal:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->layoutHorizontal(ZIIII)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->layoutVertical(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->measureChild(Landroid/view/View;II)V

    iget-boolean v5, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mHorizontal:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-static {v4, p1}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->resolveSize(II)I

    move-result v5

    invoke-static {v2, p2}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->setMeasuredDimension(II)V

    return-void
.end method
