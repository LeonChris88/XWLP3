.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/LinearLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideView$ErrorReasonDisplayer;,
        Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;,
        Lcom/android/mms/ui/SlideView$MovieView;
    }
.end annotation


# static fields
.field private static final MEDIA_MAXIMUM_LENGTH:I

.field private static final MEDIA_MINIMUM_LENGTH:I

.field public static fileName1:Ljava/lang/String;

.field private static mRenameDialog:Landroid/app/AlertDialog;

.field private static saveMode:Z

.field public static staticAttachment:Lcom/android/mms/model/AttachmentModel;

.field public static staticAudioModel:Lcom/android/mms/model/AudioModel;

.field public static staticClickUri:Landroid/net/Uri;

.field public static staticImageModel:Lcom/android/mms/model/ImageModel;

.field public static staticSlideIndex:I

.field public static staticVideoModel:Lcom/android/mms/model/VideoModel;


# instance fields
.field private final MAX_TEXT_COUNT:I

.field private final MEDIA_ERROR_CURRUPT:I

.field private final MEDIA_ERROR_NOTSUPPORT:I

.field private MMS_SUBJECT_HEIGHT:F

.field public STORE_DIR:Ljava/lang/String;

.field private VIDEO_MAXIMUM_HEIGHT:I

.field private VIDEO_MAXIMUM_HEIGHT_DIP:F

.field private VIDEO_WRAPPER_PADDING:F

.field public attachMsgId:J

.field private attachmentFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attachmentInfoArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAgifBitmap:Landroid/graphics/Bitmap;

.field private mAleadyPasued:Z

.field private mAleadyResumed:Z

.field private mAttachViewHeight:I

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mAudioViewHeight:I

.field private mCanvas:Landroid/graphics/Canvas;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mDiffTime:J

.field private mDispatchDrawCalled:Z

.field private mImageHeight:I

.field private mImageTop:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageWidth:I

.field private mImageWrapper:Landroid/widget/LinearLayout;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsPrepared:Z

.field private mIsTextTop:Z

.field private mMainLinearLayout:Landroid/widget/LinearLayout;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMediaViewPort:Landroid/widget/LinearLayout;

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieHeight:I

.field private mMovieLeft:I

.field private mMoviePlay:Z

.field private mMovieStart:J

.field private mMovieTop:I

.field private mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

.field private mMovieWidth:I

.field mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mPageInfoView:Landroid/view/View;

.field private mPause:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mRawAttachmentHandler:Landroid/os/Handler;

.field private mRecentPausedTime:J

.field private mResume:Z

.field private mScale:F

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mStartAgifImage:Z

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private mSubject:Ljava/lang/String;

.field private mSubjectHeight:I

.field private mTextHeight:I

.field private mTextTop:I

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewPort:Landroid/widget/LinearLayout;

.field private mVideoHeight:I

.field private mVideoLeft:I

.field private mVideoTop:I

.field private mVideoView:Lcom/android/mms/ui/TestVideoView;

.field private mVideoWidth:I

.field private mVideoWrapper:Landroid/widget/LinearLayout;

.field private rawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private replaceFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    sput v0, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SlideView;->saveMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x4

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_NOTSUPPORT:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_CURRUPT:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MAX_TEXT_COUNT:I

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    const v0, 0x40533333

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:F

    const/high16 v0, 0x434d

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT_DIP:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->replaceFileMap:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mRawAttachmentHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->STORE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mAttachViewHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v2, 0x3f00

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x4

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_NOTSUPPORT:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_CURRUPT:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MAX_TEXT_COUNT:I

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    const v0, 0x40533333

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:F

    const/high16 v0, 0x434d

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT_DIP:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->replaceFileMap:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mRawAttachmentHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->STORE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mAttachViewHeight:I

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    iget v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    const/high16 v0, 0x41c0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    iget v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT_DIP:F

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideView;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SlideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/SlideView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/SlideView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/SlideView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SlideView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/SlideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieWidth:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/SlideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieLeft:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/SlideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieTop:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/SlideView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->replaceFileMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3200()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/SlideView;->saveMode:Z

    return v0
.end method

.method static synthetic access$3202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/SlideView;->saveMode:Z

    return p0
.end method

.method static synthetic access$3300()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/SlideView;->mRenameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/mms/ui/SlideView;->mRenameDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideView;->startCheckFileName(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/SlideView;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SlideView;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/SlideView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/SlideView;JLcom/android/mms/model/AttachmentModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SlideView;->copyMedia(JLcom/android/mms/model/AttachmentModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/SlideView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mRawAttachmentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private copyMedia(JLcom/android/mms/model/AttachmentModel;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Mms/SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMedia(),msgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "text/plain"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "application/smil"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/SlideView;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v0, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Mms/SlideView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyMedia : is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "Mms/SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyPart(),fallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    instance-of v1, v9, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1d

    move-object v0, v9

    check-cast v0, Ljava/io/FileInputStream;

    move-object v8, v0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_a

    move-object/from16 v1, p2

    :goto_1
    const/4 v2, 0x1

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v2, 0x1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "cid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v13, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "name"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "cl"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :cond_4
    if-eqz v2, :cond_1a

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v1

    :goto_2
    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v1, -0x1

    if-ne v3, v1, :cond_f

    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    :goto_3
    const-string v2, "Mms/SlideView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extension"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "dcf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v1, "dcf"

    :cond_5
    if-nez v1, :cond_19

    const-string v2, "text/x-vCard"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v1, "vcf"

    move-object v2, v1

    :goto_4
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->replaceInvalidFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    const-string v1, "_"

    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->replaceFileMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->replaceFileMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v1

    :goto_6
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_14

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Mms/SlideView"

    const-string v5, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " failed!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    const/4 v1, 0x0

    if-eqz v9, :cond_8

    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_8
    :goto_7
    if-eqz v11, :cond_9

    :try_start_5
    throw v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_9
    :goto_8
    return v1

    :cond_a
    :try_start_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v2, v10

    move-object v3, v11

    :goto_9
    :try_start_7
    const-string v4, "Mms/SlideView"

    const-string v5, "IOException caught while opening or reading stream"

    invoke-static {v4, v5, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_b
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v1

    move-object v11, v3

    :goto_a
    if-eqz v9, :cond_c

    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_c
    :goto_b
    if-eqz v11, :cond_d

    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_d
    :goto_c
    throw v1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_e

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1

    :catchall_2
    move-exception v1

    goto :goto_a

    :cond_f
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_3

    :cond_10
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v1, "vcs"

    move-object v2, v1

    goto/16 :goto_4

    :cond_11
    const-string v2, "text/x-vNote"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v1, "vnt"

    move-object v2, v1

    goto/16 :goto_4

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_13
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->STORE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_6

    :catch_1
    move-exception v2

    const-string v3, "Mms/SlideView"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_2
    move-exception v2

    const-string v3, "Mms/SlideView"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_14
    :try_start_b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    const/16 v1, 0x1f40

    :try_start_c
    new-array v1, v1, [B

    :goto_d
    invoke-virtual {v8, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_d

    :catch_3
    move-exception v1

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/SlideView;->fileName1:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v4, Lcom/android/mms/ui/SlideView$11;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SlideView$11;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    :goto_e
    if-eqz v9, :cond_18

    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    move v1, v12

    :goto_f
    if-eqz v3, :cond_9

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_8

    :catch_4
    move-exception v1

    const-string v2, "Mms/SlideView"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto/16 :goto_8

    :catch_5
    move-exception v1

    const-string v2, "Mms/SlideView"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_f

    :cond_16
    const/4 v1, 0x0

    if-eqz v9, :cond_17

    :try_start_f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    :cond_17
    :goto_10
    if-eqz v3, :cond_9

    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_8

    :catch_6
    move-exception v1

    const-string v2, "Mms/SlideView"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto/16 :goto_8

    :catch_7
    move-exception v1

    const-string v2, "Mms/SlideView"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_10

    :catch_8
    move-exception v2

    const-string v3, "Mms/SlideView"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_9
    move-exception v2

    const-string v3, "Mms/SlideView"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :catch_a
    move-exception v1

    move-object v3, v11

    goto/16 :goto_9

    :cond_18
    move v1, v12

    goto :goto_f

    :cond_19
    move-object v2, v1

    goto/16 :goto_4

    :cond_1a
    move-object v2, v1

    goto/16 :goto_2

    :cond_1b
    move-object v2, v1

    goto/16 :goto_2

    :cond_1c
    move-object v2, v1

    goto/16 :goto_0

    :cond_1d
    move-object v3, v11

    goto :goto_e
.end method

.method private displayAudioInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideAudioInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f030023

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v7, 0x7f080091

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v6, "dm"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v6, "cid:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Cid:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v6, :cond_4

    const v6, 0x7f0800a6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    iget v10, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method public static setAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 0

    sput-object p0, Lcom/android/mms/ui/SlideView;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    return-void
.end method

.method public static setAudioModel(Lcom/android/mms/model/AudioModel;)V
    .locals 2

    const-string v0, "kkahn/Mms/SlideView"

    const-string v1, "setAudioModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/android/mms/ui/SlideView;->staticAudioModel:Lcom/android/mms/model/AudioModel;

    return-void
.end method

.method public static setClickUri(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "kkahn/Mms/SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickUri:uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/android/mms/ui/SlideView;->staticClickUri:Landroid/net/Uri;

    return-void
.end method

.method public static setImageModel(Lcom/android/mms/model/ImageModel;)V
    .locals 0

    sput-object p0, Lcom/android/mms/ui/SlideView;->staticImageModel:Lcom/android/mms/model/ImageModel;

    return-void
.end method

.method public static setSlideIndex(I)V
    .locals 3

    const-string v0, "kkahn/Mms/SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlideIndex:slideindex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/android/mms/ui/SlideView;->staticSlideIndex:I

    return-void
.end method

.method public static setVideoModel(Lcom/android/mms/model/VideoModel;)V
    .locals 2

    const-string v0, "kkahn/Mms/SlideView"

    const-string v1, "setVideoModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/android/mms/ui/SlideView;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    return-void
.end method

.method private showFileRenameDialog(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030002

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f080007

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f080008

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f090177

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    const v1, 0x7f090069

    new-instance v2, Lcom/android/mms/ui/SlideView$6;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/mms/ui/SlideView$6;-><init>(Lcom/android/mms/ui/SlideView;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09006a

    new-instance v2, Lcom/android/mms/ui/SlideView$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideView$7;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/SlideView;->mRenameDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/SlideView$8;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/SlideView$8;-><init>(Lcom/android/mms/ui/SlideView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object v1, Lcom/android/mms/ui/SlideView;->mRenameDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/SlideView$9;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/SlideView$9;-><init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v1, Lcom/android/mms/ui/SlideView;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/mms/ui/SlideView$10;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/SlideView$10;-><init>(Lcom/android/mms/ui/SlideView;Landroid/widget/EditText;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0
.end method

.method private startCheckFileName(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideView;->showFileRenameDialog(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideView;->attachMsgId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/SlideView;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    goto :goto_0
.end method

.method private startExportRawAttachments(Ljava/util/ArrayList;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->STORE_DIR:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v1, v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string v6, "text/plain"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v6, "application/smil"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v3, v4

    :cond_0
    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    const v2, 0x7f09015e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;-><init>(Lcom/android/mms/ui/SlideView;Ljava/lang/String;Ljava/util/ArrayList;J)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView$RawAttachmentsExportThread;->start()V

    goto :goto_1
.end method


# virtual methods
.method public addAttachmentListView(Ljava/util/ArrayList;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "kkahn/Mms/SlideView"

    const-string v1, "addAttachmentListView"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/android/mms/ui/SlideView;->attachMsgId:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string v0, "kkahn/Mms/SlideView"

    const-string v1, "addAttachmentOneView"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f080003

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080002

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080004

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    invoke-virtual {p1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x2e

    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ltz v7, :cond_9

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "dm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dcf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "cid:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Cid:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "text/x-vCard"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "text/x-vcard"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const v0, 0x7f02004f

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_2
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iget v5, p0, Lcom/android/mms/ui/SlideView;->mAttachViewHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/mms/ui/SlideView;->setAttachment(Lcom/android/mms/model/AttachmentModel;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/SlideView$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideView$4;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/mms/ui/SlideView$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$5;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    const-string v3, "text/x-vCalendar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v0, 0x7f02004c

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    const-string v3, "text/x-vNote"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v0, 0x7f020052

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    const-string v3, "text/x-vtodo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f02005b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_7
    const v0, 0x7f020046

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_8
    move-object v3, v5

    goto/16 :goto_1

    :cond_9
    move-object v3, v4

    goto/16 :goto_0
.end method

.method public calculate(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v1, v2, v3

    if-ge p1, p2, :cond_4

    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    if-ge p2, v2, :cond_1

    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_1
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    if-le p2, v2, :cond_2

    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0

    :cond_2
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    if-ge p1, v2, :cond_0

    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    sget v3, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    if-ge v2, v3, :cond_3

    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    :cond_3
    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0

    :cond_4
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    if-ge p1, v2, :cond_5

    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    :cond_5
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    if-le p2, v2, :cond_6

    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    :cond_6
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    if-ge p2, v2, :cond_0

    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sget v3, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    if-ge v2, v3, :cond_7

    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0

    :cond_7
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0
.end method

.method public initAttachmentListView()V
    .locals 4

    const-string v0, "kkahn/Mms/SlideView"

    const-string v1, "initAttachmentListView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v0, "kkahn/Mms/SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numOfAttach="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int v1, p2, v1

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return-void
.end method

.method public pauseMovie()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideView$MovieView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Lcom/android/mms/ui/TestVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    iput v4, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    iput v4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    iput v4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAgifBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->stopMovie(Landroid/graphics/Bitmap;)V

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SlideView$MovieView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_8
    return-void
.end method

.method public resetAgifState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    return-void
.end method

.method public saveAttachFile(Lcom/android/mms/model/AttachmentModel;)V
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->replaceInvalidFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->STORE_DIR:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/android/mms/ui/SlideView;->attachMsgId:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/SlideView;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideView;->startCheckFileName(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public seekAudio(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/TestVideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setAgifStopImage(Landroid/graphics/Bitmap;Z)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    iput-boolean p2, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-eqz p2, :cond_2

    const v1, 0x7f0800a8

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020110

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    const v1, 0x7f0800a7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Mms/SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAgifStopImageRegion(IIII)V
    .locals 2

    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 6

    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    if-eqz p3, :cond_2

    const v1, 0x7f0800a8

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020110

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    const v1, 0x7f0800a7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Mms/SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setImageRegion(IIII)V
    .locals 2

    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3, p4}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setImageRegionForVideostop(IIII)V
    .locals 2

    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget p4, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT:I

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3, p4}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    if-eqz p3, :cond_2

    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideView$MovieView;-><init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Movie;->height()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    iput-wide v5, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    iput-wide v5, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->resetAgifState()V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setMovieRegion(IIII)V
    .locals 3

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView$MovieView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    return-void
.end method

.method public setPageNumber(II)V
    .locals 5

    const v3, 0x7f0800a4

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v4, 0x7f08008f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v4, 0x7f08008e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSlideViewSubject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public setSmilPlayer(Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    const/16 v7, 0x1770

    const/4 v6, 0x0

    iput-boolean p4, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    if-eqz p4, :cond_1

    const v1, 0x7f0800a7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    :goto_0
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    :cond_0
    sget v0, Lcom/android/mms/ui/SlideshowActivity;->displayDensity:F

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x4000

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const-string v2, "#00AEEF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const-wide v2, 0x402a99999999999aL

    float-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x4040

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_2

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const v1, 0x7f0800a8

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public setTextRegion(IIIIZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iput p4, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mTextTop:I

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int/2addr p4, v0

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int/2addr p4, v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    if-eqz p3, :cond_0

    const v1, 0x7f0800a8

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/android/mms/ui/TestVideoView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/TestVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:F

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/TestVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void

    :cond_0
    const v1, 0x7f0800a7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setVideoRegion(IIII)V
    .locals 2

    iput p4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    iput p2, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    iput p1, p0, Lcom/android/mms/ui/SlideView;->mVideoLeft:I

    iput p3, p0, Lcom/android/mms/ui/SlideView;->mVideoWidth:I

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget p4, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT:I

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput p4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    :cond_0
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/TestVideoView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 0

    return-void
.end method

.method public startAudio()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public startMovie()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    :cond_0
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideView$MovieView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    const-string v2, "Mms/SlideView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMovieView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startVideo()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Lcom/android/mms/ui/TestVideoView;->start()V

    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    const-string v0, "Mms/SlideView"

    const-string v1, "Stop the audio player"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopMovie(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAgifBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView$MovieView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mMovieLeft:I

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mMovieTop:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mMovieWidth:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mMovieHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideView;->setImageRegion(IIII)V

    :cond_0
    return-void
.end method

.method public stopVideo(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Lcom/android/mms/ui/TestVideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoLeft:I

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWidth:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideView;->setImageRegionForVideostop(IIII)V

    :cond_0
    return-void
.end method
