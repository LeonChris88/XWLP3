.class public Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCameraSideMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;
.implements Lcom/sec/android/app/camera/MenuBase$OnHideListener;
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;


# static fields
.field public static final ANCHOR_HEIGHT:I = 0x16

.field public static final ANCHOR_POS_X:I = 0x4a

.field private static final LEFT_SIDE_MENU_BUTTON_HEIGHT:I = 0x76

.field private static final LEFT_SIDE_MENU_BUTTON_WIDTH:I = 0x76

.field private static final LEFT_SIDE_MENU_HEIGHT:I = 0x1e0

.field public static final LEFT_SIDE_MENU_ITEM_HEIGHT:I = 0x60

.field public static final LEFT_SIDE_MENU_ITEM_INTERVAL:I = 0x0

.field public static final LEFT_SIDE_MENU_ITEM_START_POS_X:I = 0x0

.field public static final LEFT_SIDE_MENU_ITEM_START_POS_Y:I = 0x0

.field private static final LEFT_SIDE_MENU_ITEM_WIDTH:I = 0x50

.field private static final LEFT_SIDE_MENU_POS_X:I = 0x0

.field private static final LEFT_SIDE_MENU_POS_Y:I = 0x0

.field private static final LEFT_SIDE_MENU_WIDTH:I = 0x50

.field private static final MODE_BUTTON_POS_X:I = 0x5

.field private static final MODE_BUTTON_POS_Y:I = 0xb

.field private static final NUM_OF_LEFT_SIDE_MENU:I = 0x4

.field private static final RIGHT_SIDE_MENU_HEIGHT:I = 0x1e0

.field private static final RIGHT_SIDE_MENU_POS_X:I = 0x2d0

.field private static final RIGHT_SIDE_MENU_POS_Y:I = 0x0

.field private static final RIGHT_SIDE_MENU_WIDTH:I = 0x50

.field private static final SETTING_BG_POS_X:I = 0xa

.field private static final SETTING_BG_POS_Y:I = 0x192

.field private static final SHUTTER_BUTTON_IMAGE_POS_X:I = 0x14

.field private static final SHUTTER_BUTTON_IMAGE_POS_Y:I = 0xd9

.field private static final SHUTTER_BUTTON_POS_X:I = 0x0

.field private static final SHUTTER_BUTTON_POS_Y:I = 0xa1

.field protected static final TAG:Ljava/lang/String; = "TwGLCameraSideMenu"

.field private static final THUMBNAIL_BUTTON_POS_X:I = 0x0

.field private static final THUMBNAIL_BUTTON_POS_Y:I = 0x18b

.field public static mIsSnsMode:Z


# instance fields
.field private mAnchorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mChkSideMenuItemsShow:Z

.field private mCurrentSubMenu:Lcom/sec/android/app/camera/MenuBase;

.field private mDelCommand:[I

.field private mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

.field private mDropBoxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftBackground:Lcom/sec/android/glview/TwGLImage;

.field private mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

.field private mRefreshButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

.field private mRightBackground:Lcom/sec/android/glview/TwGLImage;

.field private mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSettingButton:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSettingCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

.field private mShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

.field private mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mVisibility:Z

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setTouchHandled(Z)V

    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v3, :cond_0

    const-string v3, "TwGLCameraSideMenu"

    const-string v4, "mActivityContext is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42a0

    const/high16 v6, 0x43f0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x4434

    const/4 v4, 0x0

    const/high16 v5, 0x42a0

    const/high16 v6, 0x43f0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const v9, 0x7f020173

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const v9, 0x7f020174

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v5, 0x40a0

    const/high16 v8, 0x4130

    const/4 v9, 0x1

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setTag(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setOnModeChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;)V

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x4321

    const v5, 0x7f020150

    const v6, 0x7f020151

    const v7, 0x7f020150

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x41a0

    const/high16 v4, 0x4359

    const v5, 0x7f02014f

    const v6, 0x7f02014f

    const v7, 0x7f02014f

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    const v4, 0x43c58000

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setTag(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/16 v16, 0x0

    :goto_2
    const/4 v3, 0x4

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    mul-int/lit8 v4, v16, 0x60

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    const/high16 v5, 0x42a0

    const/high16 v6, 0x42c0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v3, v4, v5, v8, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v4, 0x42ec

    const/high16 v5, 0x42ec

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    const v4, 0x43c58000

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    goto/16 :goto_1

    :cond_3
    new-instance v8, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x0

    mul-int/lit8 v3, v16, 0x60

    add-int/lit8 v3, v3, 0x0

    int-to-float v11, v3

    const/high16 v12, 0x42a0

    const/high16 v13, 0x42c0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v3, v4, v5, v8, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v10, 0x42a0

    const/high16 v11, 0x42c0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    const/4 v14, 0x2

    move-object v8, v2

    move-object v12, v6

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v4, v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/16 v16, 0x0

    :goto_3
    const/4 v3, 0x5

    move/from16 v0, v16

    if-ge v0, v3, :cond_4

    new-instance v15, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x4294

    mul-int/lit8 v5, v16, 0x60

    add-int/lit8 v5, v5, 0x0

    add-int/lit8 v5, v5, 0x25

    int-to-float v5, v5

    const v8, 0x7f020175

    invoke-direct {v15, v3, v4, v5, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v15}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setWideViewBGVisibility()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setChkSideMenuItemsShow(Z)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->backFromSNS(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public backFromSNS(Z)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v4, :cond_1

    const-string v4, "TwGLCameraSideMenu"

    const-string v5, "mActivityContext is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    sput-boolean v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRefreshButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRefreshButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRefreshButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    :cond_4
    const/16 v19, 0x0

    :goto_1
    const/4 v4, 0x4

    move/from16 v0, v19

    if-ge v0, v4, :cond_5

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v4, 0x0

    mul-int/lit8 v5, v19, 0x60

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    const/high16 v6, 0x42a0

    const/high16 v7, 0x42c0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v4, v5, v6, v9, v10}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v8

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v5, 0x42ec

    const/high16 v6, 0x42ec

    const/4 v9, 0x2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v20

    const-string v4, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, v22

    array-length v4, v0

    move/from16 v0, v19

    if-ge v0, v4, :cond_9

    aget-object v4, v22, v19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v4, 0x63

    move/from16 v0, v17

    if-eq v0, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    move/from16 v0, v17

    if-eq v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    move/from16 v0, v17

    if-ne v0, v4, :cond_7

    :cond_6
    add-int/lit8 v18, v18, 0x1

    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_7
    if-eqz v19, :cond_8

    const-string v4, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    aget-object v4, v22, v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    const-string v4, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x63

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEditableShortcutOrder(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v21

    new-instance v13, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    move-object/from16 v0, v21

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v21

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, v21

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v21

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x1b

    aput v6, v4, v5

    invoke-direct {v13, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    const/16 v4, 0x1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v4, v5, v6, v9, v10}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v8

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v11, 0x42a0

    const/high16 v12, 0x42c0

    const/4 v15, 0x2

    move-object v9, v3

    move-object v14, v8

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_0
.end method

.method public getChkSideMenuItemsShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mChkSideMenuItemsShow:Z

    return v0
.end method

.method public hideBackground()V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    return-void
.end method

.method public hideSideMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideSideMenuItems()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setChkSideMenuItemsShow(Z)V

    return-void
.end method

.method public lockModeButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->lockButton(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setAlpha(F)V

    return-void
.end method

.method public moveModeButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCameraSelected()V

    :cond_0
    return-void
.end method

.method public onBack()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_1

    const-string v0, "TwGLCameraSideMenu"

    const-string v1, "mActivityContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TwGLCameraSideMenu"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "TwGLCameraSideMenu"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "TwGLCameraSideMenu"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "TwGLCameraSideMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mCurrentSubMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mCurrentSubMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->popMenu(I)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mCurrentSubMenu:Lcom/sec/android/app/camera/MenuBase;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mCurrentSubMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mCurrentSubMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/MenuBase$OnHideListener;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onSelfModeChangeSelected()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const-string v1, "quickview"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1c -> :sswitch_3
        0x1d -> :sswitch_4
        0x20 -> :sswitch_0
        0x24 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDrag(FFFF)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    const-string v1, "TwGLCameraSideMenu"

    const-string v2, "mActivityContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder()V

    goto :goto_0
.end method

.method public onDragEnd(FF)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    const-string v1, "TwGLCameraSideMenu"

    const-string v2, "mActivityContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->resetOrder()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder()V

    goto :goto_0
.end method

.method public onDragStart(FF)V
    .locals 5

    const/16 v4, 0x28

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    const-string v1, "TwGLCameraSideMenu"

    const-string v2, "mActivityContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v4, v1, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->resetOrder()V

    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mCurrentSubMenu:Lcom/sec/android/app/camera/MenuBase;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->removeUptateMessage()V

    return-void
.end method

.method protected onShow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    :cond_0
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x1b

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v2, :cond_1

    const-string v1, "TwGLCameraSideMenu"

    const-string v2, "mActivityContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const-string v2, "TwGLCameraSideMenu"

    const-string v3, "onTouch MotionEvent.ACTION_DOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    goto :goto_1

    :pswitch_2
    const-string v0, "TwGLCameraSideMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch MotionEvent.ACTION_UP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "TwGLCameraSideMenu"

    const-string v2, "return isCapturing.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->shutterButtonCancelAction()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public refresh()V
    .locals 14

    const/high16 v2, 0x42ec

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    const-string v1, "TwGLCameraSideMenu"

    const-string v2, "mActivityContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    if-nez v1, :cond_0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v6

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v1, v3, v6, v12, v13}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v6, 0x2

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v8, v9

    goto :goto_0
.end method

.method public refreshAnchors()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshEditableMenu()V
    .locals 14

    const/high16 v2, 0x42ec

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    const-string v1, "TwGLCameraSideMenu"

    const-string v2, "mActivityContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSideMenuOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v6

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v1, v3, v6, v12, v13}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v6, 0x2

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v8, v9

    goto :goto_0
.end method

.method public refreshForSNS()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v2, :cond_1

    const-string v2, "TwGLCameraSideMenu"

    const-string v3, "mActivityContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0x36

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v18

    new-instance v14, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v18

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x36

    aput v4, v2, v3

    invoke-direct {v14, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v19

    new-instance v15, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x3

    aput v4, v2, v3

    invoke-direct {v15, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v21

    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v21

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v21

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v21

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput v4, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42a0

    const/high16 v6, 0x42c0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRefreshButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v6

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v3, 0x42a0

    const/high16 v4, 0x42c0

    const/4 v7, 0x2

    move-object v5, v15

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRefreshButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRefreshButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setDim(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRefreshButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setDragVibration(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRefreshButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v9, 0x0

    const/high16 v10, 0x42c0

    const/high16 v11, 0x42a0

    const/high16 v12, 0x42c0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    const/16 v2, 0x36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v6

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v3, 0x42a0

    const/high16 v4, 0x42c0

    const/4 v7, 0x2

    move-object v5, v14

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v9, 0x0

    const/high16 v10, 0x4340

    const/high16 v11, 0x42a0

    const/high16 v12, 0x42c0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v6

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v3, 0x42a0

    const/high16 v4, 0x42c0

    const/4 v7, 0x2

    move-object/from16 v5, v16

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v20

    new-instance v5, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x35

    aput v4, v2, v3

    invoke-direct {v5, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    const/16 v2, 0x35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v6

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v3, 0x42a0

    const/high16 v4, 0x42c0

    const/4 v7, 0x2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_0
.end method

.method public resetOrder()V
    .locals 9

    const/16 v8, 0x63

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v5, v5, v6

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aput v8, v4, v6

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v5, v5, v7

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aput v8, v4, v7

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v4, v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v4, 0x1b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    return-void
.end method

.method public setChkSideMenuItemsShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mChkSideMenuItemsShow:Z

    return-void
.end method

.method public setItemBackgroundVisibility(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    if-eqz v1, :cond_2

    :cond_2
    return-void
.end method

.method public setModeButtonDimmed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->lockButton(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setAlpha(F)V

    return-void
.end method

.method public setWideViewBGVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideBackground()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showBackground()V

    goto :goto_0
.end method

.method public showBackground()V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    return-void
.end method

.method public showSideMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showSideMenuItems()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setChkSideMenuItemsShow(Z)V

    return-void
.end method

.method public unLockModeButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->lockButton(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setAlpha(F)V

    return-void
.end method

.method public updateThumbnailButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    :cond_0
    return-void
.end method

.method public updateThumbnailButton(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
