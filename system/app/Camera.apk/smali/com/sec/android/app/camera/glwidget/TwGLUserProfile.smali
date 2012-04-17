.class public Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLUserProfile.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field private static final CANCEL_BTN_HEIGHT:I = 0x48

.field private static final CANCEL_BTN_POS_X:I = 0xd7

.field private static final CANCEL_BTN_POS_Y:I = 0xd5

.field private static final CANCEL_BTN_WIDTH:I = 0xc9

.field private static final IMAGE_HEIGHT:I = 0x50

.field private static final IMAGE_POS_X:I = 0x16

.field private static final IMAGE_POS_Y:I = 0x68

.field private static final IMAGE_WIDTH:I = 0x50

.field private static final MENU_HEIGHT:I = 0x122

.field private static final MENU_POS_X:I = 0xb9

.field private static final MENU_POS_Y:I = 0x60

.field private static final MENU_WIDTH:I = 0x1ab

.field private static final NAME_FONT_SIZE:F = 30.0f

#the value of this static final field might be set in the static constructor
.field private static final NAME_TEXT_COLOR:I = 0x0

.field private static final NAME_TEXT_HEIGHT:I = 0x48

.field private static final NAME_TEXT_POS_X:I = 0x71

.field private static final NAME_TEXT_POS_Y:I = 0x72

.field private static final NAME_TEXT_WIDTH:I = 0x129

.field private static final OK_BTN_HEIGHT:I = 0x48

.field private static final OK_BTN_POS_X:I = 0xb

.field private static final OK_BTN_POS_Y:I = 0xd5

.field private static final OK_BTN_WIDTH:I = 0xc9

.field private static final SCREEN_HEIGHT:I = 0x320

.field private static final SCREEN_WIDTH:I = 0x1e0

.field private static final TITLE_FONT_SIZE:F = 35.0f

.field private static final TITLE_HEIGHT:I = 0x58

.field private static final TITLE_ICON_POS_X:I = 0x16

.field private static final TITLE_ICON_POS_Y:I = 0x17

.field private static final TITLE_LEFT_PADDING:I = 0x55

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

.field private mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field private mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

.field private mResolver:Landroid/content/ContentResolver;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

.field private mTitleIcon:Lcom/sec/android/glview/TwGLImage;

.field private mTmpImage:Lcom/sec/android/glview/TwGLImage;

.field private mZOrder:I

.field private userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0xff

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->TITLE_TEXT_COLOR:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->NAME_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 12

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mZOrder:I

    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mSlideDirection:I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x42c0

    const v5, 0x43d58000

    const/high16 v6, 0x4391

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x42aa

    const/4 v4, 0x0

    const/high16 v5, 0x43ab

    const/high16 v6, 0x42b0

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x420c

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x42e2

    const/high16 v5, 0x42e4

    const v6, 0x43948000

    const/high16 v7, 0x4290

    const v8, 0x7f020018

    const v9, 0x7f020019

    const v10, 0x7f020018

    const v11, 0x7f020017

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    new-instance v2, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x40a0

    const/4 v5, 0x0

    const v6, 0x438f8000

    const/high16 v7, 0x4290

    const-string v8, ""

    const/high16 v9, 0x41f0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->NAME_TEXT_COLOR:I

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setLock(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x4130

    const/high16 v5, 0x4355

    const/high16 v6, 0x4349

    const/high16 v7, 0x4290

    const v8, 0x7f020018

    const v9, 0x7f020019

    const v10, 0x7f020018

    const v11, 0x7f020017

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x4357

    const/high16 v5, 0x4355

    const/high16 v6, 0x4349

    const/high16 v7, 0x4290

    const v8, 0x7f020018

    const v9, 0x7f020019

    const v10, 0x7f020018

    const v11, 0x7f020017

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setDragSensitivity(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v3, 0x43d58000

    const/high16 v4, 0x4391

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    const-string v2, "TwGLUserProfile()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------------------xywh= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    const/high16 v4, 0x4339

    const/high16 v5, 0x42c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    const/high16 v4, 0x4448

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x43f0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x2

    const/high16 v4, 0x4339

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x42c0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x3

    const/high16 v4, 0x4448

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const/high16 v5, 0x43f0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    const-string v2, "TwGLUserProfile()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------------------xywh = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method private getUserName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->getLocalPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setUserName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    :cond_1
    return v2
.end method

.method public onAnimationEnd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .locals 14

    const/16 v6, 0x35

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v2, 0x3b

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    if-ne p1, v1, :cond_3

    new-instance v12, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-class v2, Lcom/sec/android/app/camera/EditUserName;

    invoke-direct {v12, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_2

    const-string v1, "user_name"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0x7d5

    invoke-virtual {v1, v12, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    :try_start_0
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    const-string v2, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    if-ne v1, v2, :cond_4

    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-static {v1, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v11, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v10

    :goto_3
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v7, v1, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    const-string v2, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v2, v1, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->produceGSPersonalSettingInfoValue()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->setLocalPersonInfo(Lcom/samsung/dmc/ux/db/PersonalSettingInfo;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v6, v1, v2, v3, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    const-string v2, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v2, v1, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v6, v1, v2, v3, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    if-ne p1, v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_7

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mSlideDirection:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_1

    :cond_8
    const-string v1, "sns--execute"

    const-string v2, "not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_a

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mSlideDirection:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_1

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onDrag(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    return-void
.end method

.method public onDragEnd(FF)V
    .locals 0

    return-void
.end method

.method public onDragStart(FF)V
    .locals 0

    return-void
.end method

.method protected onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    const-string v0, "wenfeng"

    const-string v1, " show TwGLUserProfile on Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onReset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->onLayoutUpdate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onShow()V
    .locals 9

    const/4 v8, 0x1

    const/high16 v3, 0x42d0

    const/high16 v2, 0x41b0

    const/high16 v4, 0x42a0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->setListBackgrouond(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const-string v6, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setSampleSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :goto_0
    const-string v0, "wenfeng"

    const-string v1, " user profile onshow "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x43d58000

    const/high16 v2, 0x4391

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void

    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v0, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const-string v6, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setSampleSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v4, 0x7f020180

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method protected produceGSPersonalSettingInfoValue()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    :goto_0
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    goto :goto_0

    :pswitch_0
    const v3, 0x7f020180

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    goto :goto_1

    :pswitch_1
    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListBackgrouond(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020177

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    return-void
.end method
