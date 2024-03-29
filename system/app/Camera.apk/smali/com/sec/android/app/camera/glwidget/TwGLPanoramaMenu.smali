.class public Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLPanoramaMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final INT_20:I = 0x14

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final PANORAMASHOT_CAPTURE_PROGRESSBAR_ALPHA:F = 0.4f

.field private static final PANORAMASHOT_CAPTURE_PROGRESSBAR_TEXT_INTERVAL:I = 0x3c

.field private static final PANORAMASHOT_CAPTURE_PROGRESSBAR_TEXT_SIZE:F = 21.0f

.field private static final PANORAMASHOT_CAPTURE_PROGRESS_HEIGHT:I = 0x16

.field private static final PANORAMASHOT_CAPTURE_PROGRESS_X:[I = null

.field private static final PANORAMASHOT_CAPTURE_PROGRESS_Y:[I = null

.field private static final PANORAMASHOT_CAPTURE_SETSIZE_WIDTH:[I = null

.field private static final PANORAMASHOT_HELP_TEXT_HEIGHT:I = 0x5a

.field private static final PANORAMASHOT_HELP_TEXT_SIZE:F = 20.0f

.field private static final PANORAMASHOT_HELP_TEXT_WIDTH:I = 0x1cc

.field private static final PANORAMASHOT_HELP_TEXT_X:[I = null

.field private static final PANORAMASHOT_HELP_TEXT_Y:[I = null

.field private static final PANORAMASHOT_POST_PROGRESSBAR_HEIGHT:I = 0xf

.field private static final PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I = null

.field private static final PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I = null

.field private static final PANORAMASHOT_POST_PROGRESSBAR_WIDTH:I = 0x17c

.field private static final PANORAMASHOT_RECT_HEIGHT:F = 480.0f

.field private static final PANORAMASHOT_RECT_WIDTH:F = 640.0f

.field public static final PANORAMASHOT_RESULT_TEXT_HEIGHT:I = 0x113

.field public static final PANORAMASHOT_RESULT_TEXT_POS_X:[I = null

.field public static final PANORAMASHOT_RESULT_TEXT_POS_Y:[I = null

.field public static final PANORAMASHOT_RESULT_TEXT_WIDTH:I = 0x1b8

.field private static final PANORAMASHOT_TRI_HEIGHT:I = 0x1e

.field private static final PANORAMASHOT_TRI_POS_X:[I = null

.field private static final PANORAMASHOT_TRI_POS_Y:[I = null

.field private static final PANORAMASHOT_TRI_WIDTH:I = 0x1e

.field public static final PANORAMAX1_MAX_IMAGE_COUNT:I = 0x8

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static final TAG:Ljava/lang/String; = "TwGLPanoramaMenu"


# instance fields
.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCaptureCount:I

.field private mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIsPanoramaCapturing:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mResultText:Lcom/sec/android/glview/TwGLText;

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_CAPTURE_PROGRESSBAR_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_X:[I

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_CAPTURE_PROGRESSBAR_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_Y:[I

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_CAPTURE_PROGRESS_SETSIZE_WIDTH:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_SETSIZE_WIDTH:[I

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_HELP_TEXT_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_X:[I

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_HELP_TEXT_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_Y:[I

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_RESULT_TEXT_POS_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_X:[I

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_TRI_POS_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_TRI_POS_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 14

    const/4 v6, 0x5

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/android/glview/TwGLTriangle;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setCaptureEnabled(Z)V

    new-instance v1, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_SETSIZE_WIDTH:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41b0

    const v7, 0x7f0201c6

    const v8, 0x7f0201c5

    const v9, 0x3ecccccd

    const/16 v10, 0x3c

    const/high16 v11, 0x41a8

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x43e6

    const/high16 v6, 0x42b4

    const v7, 0x7f0900dc

    invoke-virtual {p1, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41a0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x43be

    const/high16 v6, 0x4170

    const v7, 0x7f0201c6

    const v8, 0x7f0201c5

    const v9, 0x3ecccccd

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x43dc

    const v6, 0x43898000

    const v7, 0x7f09000a

    invoke-virtual {p1, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41c8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v11, 0x0

    new-instance v1, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41f0

    const/high16 v6, 0x41f0

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-static {v8, v9, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v1, v10, v11

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v11, 0x1

    new-instance v1, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41f0

    const/high16 v6, 0x41f0

    const/high16 v7, 0x42b4

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-static {v8, v9, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v1, v10, v11

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v11, 0x2

    new-instance v1, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41f0

    const/high16 v6, 0x41f0

    const/high16 v7, 0x4334

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-static {v8, v9, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v1, v10, v11

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v11, 0x3

    new-instance v1, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41f0

    const/high16 v6, 0x41f0

    const/high16 v7, 0x4387

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-static {v8, v9, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v1, v10, v11

    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x441b

    const/high16 v6, 0x43e6

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const/4 v8, 0x5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLProgressBar;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    return-object v0
.end method

.method private init()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v1, 0x7f030005

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setNinePatchBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    return-void
.end method


# virtual methods
.method public clearPanoramaRect()V
    .locals 3

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    return v0
.end method

.method public getPostCaptureProgress()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    return-void
.end method

.method public hideHelpText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideCaptureLayout()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v2, 0x1b

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getPostCaptureProgress()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "TwGLPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Down - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getPostCaptureProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const-string v1, "TwGLPanoramaMenu"

    const-string v2, "Down - PANORAMAX1_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v2, 0x1b

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getPostCaptureProgress()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "TwGLPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Up - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getPostCaptureProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const-string v1, "TwGLPanoramaMenu"

    const-string v2, "Up - PANORAMAX1_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setSizeForOrientation()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    return-void
.end method

.method public panoramaDirectionChanged(I)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public panoramaRectChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->translateAbsolute(FF)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setTouchHandled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showHelpText()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    :cond_0
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->startCancelTimer()V

    return-void
.end method

.method public setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, -0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "TwGLPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCaptureCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideHelpText()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setTouchHandled(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showHelpText()V

    goto :goto_0
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 2

    const-string v0, "dspark"

    const-string v1, "setPostCaptureProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    return-void
.end method

.method public setSizeForOrientation()V
    .locals 4

    const/high16 v3, 0x41b0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_SETSIZE_WIDTH:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_SETSIZE_WIDTH:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCaptureLayout()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    return-void
.end method

.method public showHelpText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
