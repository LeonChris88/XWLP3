.class public Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLDeviceListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;
    }
.end annotation


# static fields
.field public static final LIST_ITEM_HEIGHT:I = 0x57

.field public static final LIST_ITEM_WIDTH:I = 0x228

.field private static final LIST_POS_X:I = 0x0

.field private static final LIST_POS_Y:I = 0x24

.field public static final MENU_HEIGHT:I = 0x2c1

.field private static final MENU_POS_X:I = 0x58

.field private static final MENU_POS_Y:I = 0x6

.field public static final MENU_WIDTH:I = 0x228

.field private static final TITLE_FONT_SIZE:F = 20.0f

.field public static final TITLE_HEIGHT:I = 0x24

.field private static final TITLE_LEFT_PADDING:I = 0xc

#the value of this static final field might be set in the static constructor
.field private static final TITLE_TEXT_COLOR:I = 0x0

.field private static final TITLE_TOP_PADDING:I = 0x7


# instance fields
.field anchor:Lcom/sec/android/glview/TwGLImage;

.field private mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 10

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x42b0

    const/high16 v4, 0x40c0

    const/high16 v5, 0x440a

    const v6, 0x44304000

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x4140

    const/high16 v4, 0x40e0

    const/high16 v5, 0x4407

    const/high16 v6, 0x41e8

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09010e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41a0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    new-instance v2, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4210

    const/high16 v6, 0x440a

    const v7, 0x44274000

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v3, 0x7f02017a

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$1;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/high16 v3, 0x440a

    const v4, 0x44304000

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setDragSensitivity(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setLeftTop()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    :cond_0
    return v1
.end method

.method public onAnimationEnd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

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
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    sget-object v0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iput-object v2, v0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iput-object v2, v0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    return-void
.end method

.method public onShow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->refreshDeviceList()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void
.end method

.method public refreshMenuPosition()V
    .locals 17

    const/4 v8, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->getZorder()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setListBackgrouond(I)V

    const/high16 v9, 0x40c0

    const-string v13, "@"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "befor set left,top is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v15

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v13

    const/4 v14, 0x0

    aget v5, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v13

    const/4 v14, 0x1

    aget v10, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setLeftTop()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v13

    const/4 v14, 0x0

    aget v6, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v13

    const/4 v14, 0x1

    aget v11, v13, v14

    const-string v13, "@"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "befor set left,top is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v15

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v2

    :goto_0
    add-float v1, v9, v2

    sub-float v3, v6, v5

    sub-float v4, v11, v10

    const-string v13, "@"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "interval_left_top === is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "@"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "zhongdian "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/high16 v15, 0x4000

    div-float v15, v2, v15

    add-float/2addr v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float v14, v2, v14

    add-float/2addr v14, v9

    sub-float v7, v13, v14

    const-string v13, "@"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "move is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-float v13, v9, v7

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4

    const-string v13, "@"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "top + move is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-float v15, v9, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    neg-float v13, v9

    int-to-float v14, v8

    add-float v7, v13, v14

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-gtz v13, :cond_1

    const/4 v13, 0x0

    cmpl-float v13, v4, v13

    if-lez v13, :cond_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v7}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-gtz v13, :cond_2

    const/4 v13, 0x0

    cmpl-float v13, v4, v13

    if-lez v13, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOrientation(I)V

    :cond_3
    :goto_3
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v2

    goto/16 :goto_0

    :cond_4
    add-float v13, v1, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    const-string v13, "@"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bottom is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v1

    int-to-float v14, v8

    sub-float v7, v13, v14

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto :goto_2

    :cond_6
    const/4 v8, 0x6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v2

    add-float v1, v9, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v13

    packed-switch v13, :pswitch_data_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mLaunchY:F

    const/high16 v14, 0x4000

    div-float v14, v2, v14

    add-float/2addr v14, v9

    sub-float v7, v13, v14

    add-float v13, v9, v7

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    neg-float v13, v9

    const/high16 v14, 0x4228

    add-float v7, v13, v14

    :cond_7
    add-float v13, v1, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v1

    const/high16 v14, 0x4000

    sub-float v7, v13, v14

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/high16 v14, 0x4420

    sub-float/2addr v14, v12

    const/high16 v15, 0x41a0

    sub-float/2addr v14, v15

    invoke-virtual {v13, v14, v7}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto/16 :goto_3

    :pswitch_2
    const/high16 v13, 0x4420

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mLaunchY:F

    sub-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float v14, v2, v14

    add-float/2addr v14, v9

    sub-float v7, v13, v14

    add-float v13, v1, v7

    const/high16 v14, 0x4420

    cmpl-float v13, v13, v14

    if-lez v13, :cond_9

    const/high16 v13, 0x4420

    sub-float/2addr v13, v1

    const/high16 v14, 0x4228

    sub-float v7, v13, v14

    :cond_9
    add-float v13, v9, v7

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_a

    neg-float v13, v9

    const/high16 v14, 0x41a0

    add-float v7, v13, v14

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/high16 v14, 0x41a0

    invoke-virtual {v13, v7, v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mLaunchY:F

    const/high16 v14, 0x42a0

    sub-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float v14, v2, v14

    add-float/2addr v14, v9

    sub-float v7, v13, v14

    add-float v13, v9, v7

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_b

    neg-float v13, v9

    const/high16 v14, 0x4228

    add-float v7, v13, v14

    :cond_b
    add-float v13, v1, v7

    const/high16 v14, 0x4420

    cmpl-float v13, v13, v14

    if-lez v13, :cond_c

    const/high16 v13, 0x4420

    sub-float/2addr v13, v1

    const/high16 v14, 0x41a0

    sub-float v7, v13, v14

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/high16 v14, 0x40c0

    invoke-virtual {v13, v7, v14}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto/16 :goto_3

    :pswitch_4
    const/high16 v13, 0x43f0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mLaunchY:F

    sub-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float v14, v2, v14

    add-float/2addr v14, v9

    sub-float v7, v13, v14

    add-float v13, v1, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    const/high16 v14, 0x4228

    sub-float v7, v13, v14

    :cond_d
    add-float v13, v9, v7

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_e

    neg-float v13, v9

    const/high16 v14, 0x4000

    add-float v7, v13, v14

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/high16 v14, 0x4420

    sub-float/2addr v14, v12

    const/high16 v15, 0x41a0

    sub-float/2addr v14, v15

    invoke-virtual {v13, v14, v7}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setLeftTop()V
    .locals 6

    const/high16 v5, 0x42b0

    const/high16 v4, 0x40c0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v2

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v2

    add-float/2addr v2, v5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v3

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    const-string v0, "@"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left,top is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v2

    add-float/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v2

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v2

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v5, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    return-void
.end method

.method public setListBackgrouond(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020176

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    return-void
.end method
