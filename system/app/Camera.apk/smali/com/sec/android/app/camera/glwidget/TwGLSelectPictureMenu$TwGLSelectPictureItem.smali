.class Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLSelectPictureMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TwGLSelectPictureItem"
.end annotation


# static fields
.field public static final CHECKBOX_TYPE:I = 0x4

.field public static final EDITABLESHORTCUT_TYPE:I = 0x1

.field public static final LIST_TYPE:I = 0x0

.field private static final LIST_TYPE_BUTTON_HEIGHT:I = 0x60

.field private static final POS_CANCEL:I = 0x2

.field private static final ROTATE_ANIMATION_DURATION:I = 0x1f4

.field private static final SEPARATOR_HEIGHT:I = 0x2

.field private static final SEPARATOR_POS_X:I = 0x0

.field public static final SETTINGS_TYPE:I = 0x3

.field private static final SETTING_TYPE_BUTTON_HEIGHT:I = 0x60

.field private static final SETTING_TYPE_BUTTON_WIDTH:I = 0x2ee

.field private static final SETTING_TYPE_TEXT_POS_X:I = 0x55

.field private static final SETTING_TYPE_TEXT_POS_Y:I = 0x0

.field private static final SETTING_TYPE_TEXT_WIDTH:I = 0x260

.field public static final SIDEBUTTON_TYPE:I = 0x2

.field private static final TEXT_FONT_SIZE:I = 0x23

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDim:Z

.field private mLock:Z

.field private mPosition:I

.field private mPreviousType:I

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mZOrder:I

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;Lcom/sec/android/app/camera/AbstractCameraActivity;III)V
    .locals 12

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mZOrder:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mCurrentType:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPreviousType:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mDim:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mLock:Z

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPosition:I

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p3

    move/from16 v0, p4

    int-to-float v6, v0

    const v7, 0x7f02018d

    const v8, 0x7f02018d

    const v9, 0x7f02018d

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$600()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->initContents()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->setContentType()V

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p3

    move/from16 v0, p4

    int-to-float v6, v0

    const v7, 0x7f020191

    const v8, 0x7f020191

    const v9, 0x7f020191

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$600()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_0
.end method

.method private clearContent()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    :cond_0
    return-void
.end method

.method private initContents()V
    .locals 13

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    const-string v0, "initContents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " width , height ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPosition:I

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f09010f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :cond_0
    new-instance v6, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/high16 v11, 0x4000

    const v12, 0x7f020179

    move v8, v2

    move v9, v2

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPosition:I

    if-ne v0, v7, :cond_2

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090110

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const-string v6, ""

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->clearContent()V

    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mCurrentType:I

    return v0
.end method

.method public getScrollHint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .locals 6

    const/16 v5, 0x7d4

    const/16 v4, 0x64

    const/4 v3, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPosition:I

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPosition:I

    if-ne v1, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x38

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_0
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->getRotatable()Z

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

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->getClipRect()Landroid/graphics/Rect;

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

    const/4 v0, 0x0

    return v0
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    return-void
.end method

.method public setBGImageVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setContentType()V
    .locals 6

    const/high16 v5, 0x42c0

    const/high16 v4, 0x42aa

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->setRotatable(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->setCenterPivot(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->moveLayout(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x4418

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x443b8000

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const v1, 0x443b8000

    const/high16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/high16 v1, 0x42bc

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method public setZOrder(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mZOrder:I

    return-void
.end method
