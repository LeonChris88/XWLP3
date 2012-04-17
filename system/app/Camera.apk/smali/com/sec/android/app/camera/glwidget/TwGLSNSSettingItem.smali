.class public Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLSNSSettingItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final CHECKBOX_POS_Y:I = 0x15

.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I = 0x3f

.field private static final IMAGE_ICON_POS_X:I = 0x127

.field private static final IMAGE_ICON_POS_Y:I = 0xc

.field public static final LIST_INCLUDE_CHECKBOX:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I = 0x0

.field private static final LIST_TYPE_BUTTON_HEIGHT:I = 0x46

.field private static final LIST_TYPE_BUTTON_WIDTH:I = 0x228

.field private static final LIST_TYPE_TEXT_HEIGHT:I = 0x40

.field private static final LIST_TYPE_TEXT_POS_X:I = 0x11

.field private static final LIST_TYPE_TEXT_POS_Y:I = 0x3

.field private static final LIST_TYPE_TEXT_WIDTH:I = 0x116

.field public static final LIST_USERPROFILE:I = 0x0

.field private static final SEPARATOR_HEIGHT:I = 0x2

.field private static final SEPARATOR_POS_X:I = 0x0

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

.field private mDim:Z

.field private mLock:Z

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mUserIcon:Lcom/sec/android/glview/TwGLImage;

.field private mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xff

    const/16 v1, 0x8

    const/16 v2, 0x83

    const/16 v3, 0xd3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->initContents(I)V

    invoke-virtual {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setContentType(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->initContents(I)V

    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setContentType(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8

    const v4, 0x7f020191

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    return-void
.end method

.method private clearContent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    :cond_1
    return-void
.end method

.method private initContents(I)V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getHeight()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-nez v0, :cond_2

    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v0, 0x427c

    sub-float v8, v4, v0

    const/high16 v9, 0x41a8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFIZ)V

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setBypassTouch(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x43938000

    const/high16 v3, 0x4140

    const v6, 0x7f020026

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_4

    new-instance v6, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x4000

    const v12, 0x7f020179

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_4
    return-void

    :cond_5
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_0

    :cond_6
    move v5, v13

    move v4, v14

    goto/16 :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->clearContent()V

    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method public getButtonType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    return v0
.end method

.method public getCommand()Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    return-object v0
.end method

.method public getCommandId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    return v0
.end method

.method public getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public getScrollHint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x4000

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPreviewFileReceived(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onRunSNSAfterConnect(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getRotatable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    :cond_1
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    return-void
.end method

.method public setBGImageVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setContentType(I)V
    .locals 5

    const/high16 v4, 0x440a

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setRotatable(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setCenterPivot(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/high16 v1, 0x428c

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x4188

    const/high16 v2, 0x4040

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayout(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x438b

    const/high16 v2, 0x4280

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    const/high16 v2, 0x4288

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setDim(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->resetSize()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_1
.end method

.method public setDim(Z)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setLock(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public setZOrder(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    return-void
.end method
