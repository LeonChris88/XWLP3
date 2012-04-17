.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
.implements Lcom/android/mms/ui/SlideViewInterface;


# static fields
.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAP_TIMEOUT:I

.field public static gListview:Lcom/android/mms/ui/MessageListView;


# instance fields
.field private SMS_POPUP_RIGHT_MARGON:F

.field protected mAttachView:Landroid/widget/ImageView;

.field private mAudioImageView:Landroid/widget/ImageView;

.field private mAudioTitle:Landroid/widget/TextView;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCursor:Landroid/database/Cursor;

.field protected mDateView:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mDownloding:Z

.field private mFailedIcon:Landroid/widget/Button;

.field private final mFailedIconClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsAlignLeft:Z

.field private mLinkedContextMenu:Landroid/app/AlertDialog;

.field protected mLockView:Landroid/widget/ImageView;

.field private final mLongClickHandler:Landroid/os/Handler;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field protected mMmsIndicatorView:Landroid/widget/TextView;

.field private mMmsView:Landroid/view/View;

.field private mMsgListItem:Landroid/view/View;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSlideShowButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900()I
    .locals 1

    sget v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    sget v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->showLinksContextMenu(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    return-object v0
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setBodyTextViewColor(Z)V

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZ)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    :goto_3
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const-string v2, "MmsThumbnailPresenter"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2, v3, p0, v4}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/Presenter;->present(Z)V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_3
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v4, 0x7f0900a6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v3, v3, 0x3ff

    div-int/lit16 v3, v3, 0x400

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v5, v7}, Lcom/android/mms/ui/MessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZ)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setBodyTextViewColor(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v3, 0x7f02000d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    :goto_3
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v3, 0x7f0200c4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 5

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "GT-I9100"

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9100"

    const-string v1, "SPH-D705"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9100"

    const-string v1, "ISW11SC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideSipExplict()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private inflateDownloadControls()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLinksClickable(Z)V

    return-void
.end method

.method private inflateMmsView()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method private isDeleteMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setBodyTextViewColor(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_0

    const v0, -0xafafb0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-void
.end method

.method private setDateViewTextAndColor(Ljava/lang/String;ZZZ)V
    .locals 3

    const/16 v0, 0x8

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method private showLinksContextMenu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const v5, 0x7f0902b0

    const v4, 0x7f090067

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v4, 0x1090011

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v3, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    const-string v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v3, "com.android.contacts"

    invoke-static {v2, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "tel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Contact;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private startViewer()V
    .locals 10

    const/16 v9, 0x82

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideSipExplict()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "msgId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v2, v9, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentCount:I

    if-lez v2, :cond_4

    move v3, v8

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-eq v2, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZJJ)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x2400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "msgId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addAttachmentListView(Ljava/util/ArrayList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    return-void
.end method

.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    const/16 v6, 0x8

    const/high16 v5, 0x4160

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_2
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    :goto_4
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_TINY:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_SMALL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const v1, 0x419547ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x4228

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected findDateAndIconsView()V
    .locals 1

    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    return-void
.end method

.method protected formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;I)Ljava/lang/CharSequence;
    .locals 22

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v13, v0, [I

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v12, v0, [I

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    const/4 v7, 0x1

    :goto_0
    if-eqz v7, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f09001f

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p2, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v12, v0, [I

    if-eqz v7, :cond_1

    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextViewSize()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextViewSize()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v12

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f090174

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v17

    add-int v6, v14, v17

    invoke-virtual {v4, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x205000b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v18, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v14, v6, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v17, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct/range {v17 .. v18}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/16 v18, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v14, v6, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_1
    if-eqz p3, :cond_b

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const/4 v9, 0x0

    :cond_3
    :goto_2
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_b

    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_3
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    aget v17, v13, v8

    if-nez v17, :cond_7

    aget v17, v12, v8

    if-nez v17, :cond_7

    :cond_4
    if-nez v9, :cond_3

    new-instance v17, Landroid/text/style/StyleSpan;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v12

    goto :goto_1

    :cond_7
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    aget v18, v13, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    aget v18, v12, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    :cond_8
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v17

    aget v18, v13, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v17

    aget v18, v12, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_a

    :cond_9
    const/4 v9, 0x1

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    return-object v4
.end method

.method public getBubbleLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public initAttachmentListView()V
    .locals 0

    return-void
.end method

.method public isAlignLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->findDateAndIconsView()V

    return-void
.end method

.method public onMessageListItemClick()V
    .locals 3

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Mms/MessageListItem"

    const-string v1, "******SMS Click********"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_0
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pauseAudio()V
    .locals 0

    return-void
.end method

.method public pauseMovie()V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public seekAudio(I)V
    .locals 0

    return-void
.end method

.method public seekVideo(I)V
    .locals 0

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

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setCheckBox(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020110

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MessageListItem"

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

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setListView(Lcom/android/mms/ui/MessageListView;)V
    .locals 0

    sput-object p1, Lcom/android/mms/ui/MessageListItem;->gListview:Lcom/android/mms/ui/MessageListView;

    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 0

    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setPageNumber(II)V
    .locals 0

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020111

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    return-void
.end method

.method public startAudio()V
    .locals 0

    return-void
.end method

.method public startMovie()V
    .locals 0

    return-void
.end method

.method public startVideo()V
    .locals 0

    return-void
.end method

.method public stopAudio()V
    .locals 0

    return-void
.end method

.method public stopMovie(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public stopVideo(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
