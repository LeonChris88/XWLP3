.class public Lcom/sec/android/glview/TwGLStringTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLStringTexture.java"


# static fields
.field private static DEFAULT_LINE_SPACE:I

.field private static DEFAULT_PADDING:I

.field private static NUM_OF_ELLIPSIS_CHARACTER:I

.field private static final mShadowColor:I


# instance fields
.field private mBold:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mHAlign:I

.field private mHeight:I

.field private mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadow:Z

.field private mSize:F

.field private mStringHeight:I

.field private mStringWidth:I

.field private mText:Ljava/lang/String;

.field private mVAlign:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    const/4 v0, 0x5

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    const/4 v0, 0x3

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    iput v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    iput-object p8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iput p9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    iput p10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    iput-boolean p11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    iput p6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    iput p7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSystemUITypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    cmpl-float v0, p9, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    float-to-int v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    float-to-int v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    iput v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    iput-object p4, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iput p5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    iput p6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    iput-boolean p7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSystemUITypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    cmpl-float v0, p5, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    return-void
.end method

.method private getBreakIndex(Ljava/lang/String;I)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    const/4 v2, 0x0

    if-ge v1, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    return v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    if-gt v1, p2, :cond_0

    move v3, v0

    goto :goto_0
.end method

.method private getNumOfNewLineChar(Ljava/lang/String;)I
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-ne v1, v4, :cond_0

    return v0
.end method

.method private insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    sub-int v1, v5, v6

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    if-lt v5, p2, :cond_0

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sget v5, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    if-ge v2, v5, :cond_2

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v4, v5

    add-int/lit8 v1, v1, -0x1

    if-lt p2, v4, :cond_2

    move-object p1, v3

    goto :goto_0
.end method

.method private wordBreak(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/glview/TwGLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x0

    add-int/lit8 v10, v3, 0x1

    if-ne p1, v10, :cond_2

    :cond_0
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/16 v11, 0xa

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v0, 0x1

    :cond_1
    const/4 v10, -0x1

    if-ne v0, v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v4

    :cond_2
    const/4 v6, 0x0

    const/4 v0, 0x0

    :cond_3
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v11, " "

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v7, v10

    :goto_1
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :cond_4
    :goto_2
    if-eqz v2, :cond_3

    goto :goto_0

    :cond_5
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v7, v10

    goto :goto_1

    :cond_6
    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-le v7, v10, :cond_11

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_c

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v11, " "

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_7

    add-int/lit8 v10, v0, 0x1

    if-ne v6, v10, :cond_a

    :cond_7
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_9

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v0

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    :cond_8
    :goto_3
    add-int/lit8 v6, v0, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_2

    :cond_9
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v10, v0, 0x1

    if-eq v6, v10, :cond_8

    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_b

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_3

    :cond_c
    move v9, v0

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v11, " "

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_d

    add-int/lit8 v10, v0, 0x1

    if-ne v6, v10, :cond_f

    :cond_d
    move v0, v9

    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_e

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v0

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_e
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_11
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_4

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public getAvailableRows()I
    .locals 2

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getStringHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    return v0
.end method

.method public getStringWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 10

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setSystemUITypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/android/glview/TwGLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getAvailableRows()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/glview/TwGLStringTexture;->wordBreak(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int v4, v5, v6

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    packed-switch v5, :pswitch_data_0

    :goto_1
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    packed-switch v5, :pswitch_data_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    if-nez v1, :cond_1

    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v5, v1

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v5, v1

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    goto :goto_1

    :pswitch_1
    if-nez v1, :cond_2

    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    goto :goto_1

    :pswitch_2
    if-nez v1, :cond_3

    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int v3, v5, v6

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int v3, v5, v6

    goto/16 :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget v7, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget v7, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_7
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    packed-switch v5, :pswitch_data_2

    :goto_3
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    packed-switch v5, :pswitch_data_3

    :cond_8
    :goto_4
    return-object v0

    :pswitch_6
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v3, v5

    goto :goto_3

    :pswitch_7
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    goto :goto_3

    :pswitch_8
    iget v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v3, v5, v6

    goto :goto_3

    :pswitch_9
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    sget v7, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_9
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    sget v7, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :pswitch_a
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_a
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :pswitch_b
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_b
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    int-to-float v8, v3

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setAlign(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    return-void
.end method

.method public setBold(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    return-void
.end method

.method public setFontSize(I)V
    .locals 2

    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    return-void
.end method

.method public setLayout(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    :goto_0
    packed-switch p2, :pswitch_data_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    return-void

    :pswitch_0
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    goto :goto_0

    :pswitch_1
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setShadowVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    return-void
.end method

.method public setSize(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    float-to-int v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    return-void
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeGiven()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    int-to-float v1, v1

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    iput p3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    return-void
.end method
