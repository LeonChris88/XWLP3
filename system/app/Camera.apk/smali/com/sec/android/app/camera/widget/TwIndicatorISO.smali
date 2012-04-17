.class public Lcom/sec/android/app/camera/widget/TwIndicatorISO;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorISO.java"


# static fields
.field public static final ISO_100:I = 0x1

.field public static final ISO_1200:I = 0x5

.field public static final ISO_1600:I = 0x6

.field public static final ISO_200:I = 0x2

.field public static final ISO_2400:I = 0x7

.field public static final ISO_3200:I = 0x8

.field public static final ISO_400:I = 0x3

.field public static final ISO_800:I = 0x4

.field public static final ISO_AUTO:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->init(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorISO:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->addImageId(II)V

    const v1, 0x7f020037

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->addImageId(II)V

    const v1, 0x7f020039

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->addImageId(II)V

    const v1, 0x7f02003b

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->addImageId(II)V

    const v1, 0x7f02003c

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->addImageId(II)V

    const/4 v1, 0x5

    const v2, 0x7f02003c

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->addImageId(II)V

    const/4 v1, 0x6

    const/4 v2, 0x5

    const v3, 0x7f020038

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->addImageId(II)V

    const/4 v1, 0x7

    const/4 v2, 0x6

    const v3, 0x7f020038

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->addImageId(II)V

    const/16 v1, 0x8

    const v2, 0x7f02003a

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->addImageId(II)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setISO(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->replaceBackground(I)V

    goto :goto_0
.end method
