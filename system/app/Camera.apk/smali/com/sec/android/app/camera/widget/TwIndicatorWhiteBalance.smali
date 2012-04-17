.class public Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorWhiteBalance.java"


# static fields
.field public static final WB_AUTO:I = 0x0

.field public static final WB_CLOUD:I = 0x1

.field public static final WB_DAYLIGHT:I = 0x2

.field public static final WB_FLUORESCENT:I = 0x3

.field public static final WB_INCANDESCENT:I = 0x4


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->init(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorWhiteBalance:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f020060

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->addImageId(II)V

    const v1, 0x7f020061

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->addImageId(II)V

    const v1, 0x7f02005f

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->addImageId(II)V

    const v1, 0x7f020062

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->addImageId(II)V

    const v1, 0x7f020063

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->addImageId(II)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->replaceBackground(I)V

    goto :goto_0
.end method
