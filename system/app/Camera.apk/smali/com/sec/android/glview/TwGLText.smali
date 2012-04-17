.class public Lcom/sec/android/glview/TwGLText;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLText.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_COLOR:I = 0x0

.field private static final DEFAULT_TEXTSIZE:F = 21.0f


# instance fields
.field private mColor:I

.field private mHAlign:I

.field private mHeight:F

.field private mShadow:Z

.field private mSize:F

.field protected mString:Lcom/sec/android/glview/TwGLStringTexture;

.field private mStringPosX:F

.field private mStringPosY:F

.field private mText:Ljava/lang/String;

.field private mVAlign:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 13

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p6, :cond_0

    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V
    .locals 13

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p6, :cond_0

    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V
    .locals 13

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p6, :cond_0

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V
    .locals 13

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p6, :cond_0

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 8

    const/high16 v3, 0x41a8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iput v3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p4, :cond_0

    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iput v3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;F)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p4, :cond_0

    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iput p5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FI)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p4, :cond_0

    iput p6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iput p5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p4, :cond_0

    iput p6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iput p5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 8

    const/high16 v3, 0x41a8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iput v3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p2, :cond_0

    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iput v3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;FI)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p2, :cond_0

    iput p4, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iput p3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-object p2, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;FIZ)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    if-eqz p2, :cond_0

    iput p4, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iput p3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput-object p2, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    return-void
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSize()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    return-void
.end method

.method protected declared-synchronized onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLayoutUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->onLayoutUpdate()V

    :cond_0
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->reset()V

    :cond_0
    return-void
.end method

.method public setAlign(II)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x4000

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v1

    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringWidth()I

    move-result v4

    int-to-float v2, v4

    :cond_0
    :goto_0
    cmpg-float v4, v0, v1

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringHeight()I

    move-result v4

    int-to-float v1, v4

    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_0

    :goto_2
    packed-switch p2, :pswitch_data_1

    :goto_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/glview/TwGLStringTexture;->setAlign(II)V

    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLStringTexture;->moveLayout(FF)V

    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :pswitch_0
    iput v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    goto :goto_2

    :pswitch_1
    sub-float v4, v3, v2

    div-float/2addr v4, v6

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    goto :goto_2

    :pswitch_2
    sub-float v4, v3, v2

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iput v9, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    goto :goto_2

    :pswitch_3
    iput v7, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    goto :goto_3

    :pswitch_4
    sub-float v4, v0, v1

    div-float/2addr v4, v6

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    goto :goto_3

    :pswitch_5
    sub-float v4, v0, v1

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    iput v9, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    goto :goto_3

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
.end method

.method public setBold(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setBold(Z)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setFontSize(I)V

    :cond_0
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->setSize(FF)V

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    return-void
.end method

.method public setShadowVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setShadowVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iput p2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iput p3, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iput-object p1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v3, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLStringTexture;->setText(Ljava/lang/String;FI)V

    :cond_0
    return-void
.end method
