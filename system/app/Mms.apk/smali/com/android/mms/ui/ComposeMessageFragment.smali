.class public Lcom/android/mms/ui/ComposeMessageFragment;
.super Landroid/app/Fragment;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;,
        Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;,
        Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;,
        Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static isComposerClosed:Z

.field public static isSipVisible:Z

.field private static mBundle:Landroid/os/Bundle;

.field private static mDelAnimProgressDialog:Landroid/app/ProgressDialog;

.field public static mDoNotRefreshDraftCache:Z

.field public static mEncodingType:I

.field private static mIsRestore:Z

.field private static mSendCompleteRun:Ljava/lang/Runnable;

.field private static sEmptyContactList:Lcom/android/mms/data/ContactList;


# instance fields
.field private animView:Landroid/view/View;

.field private displayDensity:F

.field private isAlreadyShown:Z

.field isEnter:Z

.field private isHideCompose:Z

.field private isResizingImage:Z

.field private lastView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

.field private mAttachButton:Landroid/widget/ImageButton;

.field private mAttachDialog:Landroid/app/AlertDialog;

.field private mAttachErrorDialog:Landroid/app/AlertDialog;

.field private mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

.field private mAttachListPanel:Landroid/widget/LinearLayout;

.field private mAttachmentProgressDialog:Landroid/app/ProgressDialog;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

.field private mBottomPanel:Landroid/view/View;

.field private mBubbleFontSize:F

.field private mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private final mClipboardHandler:Landroid/os/Handler;

.field private mComposeView:Landroid/view/View;

.field private mComposerPanel:Landroid/widget/ScrollView;

.field private mComposerPanelBg:I

.field private mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mCursorColor:I

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteLocked:Z

.field private mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mDeleteUri:Landroid/net/Uri;

.field private mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

.field private mDraftSavedOnStop:Z

.field private mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

.field private mEditorBg:I

.field private mExitOnSent:Z

.field private mFlagDeletedAll:Z

.field private mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasLockedMessage:Z

.field private final mHttpProgressFilter:Landroid/content/IntentFilter;

.field private final mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

.field private mIntent:Landroid/content/Intent;

.field private mInvalidRecipientsDialog:Landroid/app/AlertDialog;

.field private mIsAnimationEnable:Z

.field private mIsDeleteAnimation:Z

.field private mIsDeleteMode:Z

.field private mIsDeleteWithAnimation:Z

.field private mIsForwardedMessage:Z

.field private mIsKeyboardOpen:Z

.field private mIsLandscape:Z

.field protected mIsMediaPasteRunning:Z

.field private mIsNeedToAnimation:Z

.field private mIsNewThreadOpen:Z

.field private mIsOnScreen:Z

.field private mIsOpenToButtonMenu:Z

.field private mIsTranslateMenuON:Z

.field private mKeepToButtonVisible:Z

.field private mLayoutSelectorDialog:Landroid/app/AlertDialog;

.field private final mListKeyListener:Landroid/view/View$OnKeyListener;

.field private mLocale:Ljava/lang/String;

.field private mMaxCharExceedToast:Landroid/widget/Toast;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mMessageHandler:Landroid/os/Handler;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private final mMmsConainerHandler:Landroid/os/Handler;

.field private mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

.field private mMsgAttachHandler:Landroid/os/Handler;

.field private mMsgCount:I

.field public mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

.field mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

.field private mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

.field private mPossiblePendingNotification:Z

.field private mRecipientButton:Landroid/widget/ImageButton;

.field private mRecipientId:I

.field private mRecipientList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field public final mRecipientsEditorHandler:Landroid/os/Handler;

.field private mRecipientsField:Landroid/widget/LinearLayout;

.field private final mRecipientsWatcher:Landroid/text/TextWatcher;

.field private mRemainingInCurrentMessage:I

.field private mRemoveComposer:Z

.field mResetMessageRunnable:Ljava/lang/Runnable;

.field private mSavedToButtonRecipients:Ljava/lang/String;

.field private mScreenWidth:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedPosition:I

.field private mSendButton:Landroid/widget/Button;

.field private mSendConfirmDialog:Landroid/app/AlertDialog;

.field private mSendingMessage:Z

.field private mSentMessage:Z

.field private mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

.field private mSmileyDialog:Landroid/app/AlertDialog;

.field private mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field private mSubjectTextEditor:Landroid/widget/EditText;

.field private mTextColor:I

.field private final mTextEditorInputFilter:Landroid/text/InputFilter;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mTextFieldColor:I

.field private mTextOnTop:Z

.field private final mTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private final mToButtonDeleteHandler:Landroid/os/Handler;

.field private mToButtonDialog:Landroid/app/AlertDialog;

.field private mToButtonId:I

.field private mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

.field private mToButtonList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mms/ui/ToButton;",
            ">;"
        }
    .end annotation
.end field

.field private mToastForDraftSave:Z

.field private mToastHandler:Landroid/os/Handler;

.field private mTopLayout:Landroid/widget/LinearLayout;

.field private mTopPanel:Landroid/view/View;

.field private mWaitingForSubActivity:Z

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private mshowDupplicatedRecipientToast:Landroid/widget/Toast;

.field private numberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reqReceiver:Landroid/content/BroadcastReceiver;

.field private sendAnimSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendCompleteRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->numberList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasLockedMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsTranslateMenuON:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveComposer:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$2;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$3;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipboardHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$4;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$5;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$6;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$12;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsWatcher:Landroid/text/TextWatcher;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$13;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$14;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$26;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$26;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mResetMessageRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$31;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$31;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$32;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$32;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$50;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$50;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorInputFilter:Landroid/text/InputFilter;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$51;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$51;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$52;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$52;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$57;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$57;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$61;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$61;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$73;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$73;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$74;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$74;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditorHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$78;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$78;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private AddText(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    :goto_1
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "AddText..."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddText text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private AddToButtonInPanel()V
    .locals 10

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9}, Lcom/android/mms/ui/ToButtonLayout;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9}, Lcom/android/mms/ui/ToButtonLayout;->removeAllButtons()V

    iget v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mScreenWidth:I

    add-int/lit8 v6, v9, -0x36

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/16 v1, 0x38

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v9}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ToButton;

    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/mms/ui/ToButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-direct {p0, v2, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v9

    add-int/lit8 v5, v9, 0x14

    add-int v9, v7, v5

    add-int/lit8 v3, v9, 0xa

    if-lez v7, :cond_3

    if-le v3, v6, :cond_3

    const/4 v7, 0x0

    add-int v9, v7, v5

    add-int/lit8 v3, v9, 0xa

    add-int/2addr v8, v1

    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9, v4, v7, v8}, Lcom/android/mms/ui/ToButtonLayout;->addButton(Landroid/view/View;II)V

    move v7, v3

    goto :goto_0
.end method

.method private CheckValidRecipient(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v6}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v6}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-ne v0, v3, :cond_7

    move v3, v5

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    return v0
.end method

.method private MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V
    .locals 9

    const v8, 0x7f0901a9

    const/4 v7, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v3

    if-eqz p2, :cond_2

    if-ne v3, v7, :cond_2

    move v3, v2

    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showMaxRecipientToast()V

    :cond_3
    if-lez v1, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901aa

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$68;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$68;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showDupplicatedRecipientToast()V

    move v0, v1

    :goto_2
    move v1, v0

    goto/16 :goto_1

    :cond_6
    if-ne v3, v7, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    :cond_8
    if-nez v3, :cond_9

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method private MakeToButtons(Ljava/lang/String;Z)I
    .locals 9

    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v5, v6

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v5, v6

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-ne v1, v5, :cond_7

    if-nez p2, :cond_7

    move v5, v7

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->size()I

    move-result v5

    if-lt v5, v3, :cond_8

    const/4 v5, 0x2

    goto :goto_0

    :cond_8
    new-instance v4, Lcom/android/mms/ui/ToButton;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    invoke-direct {v4, v5, v6, p1}, Lcom/android/mms/ui/ToButton;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$69;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$69;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$70;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$70;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$71;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$71;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$72;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$72;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    if-eqz v1, :cond_9

    move v5, v7

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private MakeToButtonsByRecipientEditor(ZZ)Z
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const-string v1, "[,;]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    move v4, v3

    move v0, v3

    move v1, v3

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v5, v4

    invoke-static {v8}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showMaxRecipientToast()V

    :cond_2
    if-lez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    :cond_3
    const/16 v1, 0x8

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eq v1, v4, :cond_9

    if-lez v0, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->alertInvalidRecipientsPopup(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_4
    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showDupplicatedRecipientToast()V

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    if-nez v9, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_0
.end method

.method private MakeToButtonsByString(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "[,;]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    invoke-static {v5}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :cond_1
    if-lez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    :cond_2
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MakeToButtonsByString count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-nez v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private RemoveToButton(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->clearFocusAllToButtons()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setRecipientsOnRecipientsEditor()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateWorkingRecipients(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButtonLayout;->removeAllButtons()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private UpdateToButtonPanel(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setRecipientsOnRecipientsEditor()V

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateWorkingRecipients(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    goto :goto_0
.end method

.method private UpdateWorkingRecipients(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->containsEmail()Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    return v0
.end method

.method static synthetic access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    return v0
.end method

.method static synthetic access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/ContactList;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    return p1
.end method

.method static synthetic access$10800(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/mms/ui/ComposeMessageFragment;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnderLength(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageContactHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    return v0
.end method

.method static synthetic access$11300(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize(Z)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnPreToButton()V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnNextToButton()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->RemoveToButton(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    return p1
.end method

.method static synthetic access$12202(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$12300(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipboardHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasLockedMessage:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteMessage()V

    return-void
.end method

.method static synthetic access$1700()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ComposeMessageFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ComposeMessageFragment;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->startDeleteAnimation([I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;III)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateCounter(Ljava/lang/CharSequence;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    return-void
.end method

.method static synthetic access$3600(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->numberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ComposeMessageFragment;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMessageFragment;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ComposeMessageFragment;ZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ToButtonLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSendButtonText(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/GreekInputHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/OnEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5100()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendCompleteRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->startSendAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->startSendAnimationPrepare(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->goToConversationList()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ComposeMessageFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->setSlideDuration(II)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ComposeMessageFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityforAddMedia(IZ)V

    return-void
.end method

.method static synthetic access$5802(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/AddTextSelectorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->addtext(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ChooseContactSelectorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->chooseContact(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/ComposeMessageFragment;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZZZI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V

    return-void
.end method

.method static synthetic access$6902(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addImage(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addVideo(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addAudio(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;II)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->calculateMaxTextLength(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showEditTextMaxCharExceedToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnConverationList()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/AttachmentModel;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View$OnKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$9700(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    return v0
.end method

.method static synthetic access$9702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    return v0
.end method

.method static synthetic access$9902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    return p1
.end method

.method private addAudio(Landroid/net/Uri;IZZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x3

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    const v2, 0x7f0900db

    const/16 v4, 0xe

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    return-void
.end method

.method private final addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v0, 0xf

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v3, v0, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v1, 0x0

    if-ltz v5, :cond_8

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    const-string v5, "mailto"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->haveEmailContact(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f090008

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x7f

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    const-string v5, "tel"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/android/mms/data/Contact;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private addDeleteSoftKey()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090098

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$79;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$79;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09006a

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$80;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$80;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$81;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$81;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addImage(Landroid/net/Uri;IZZZ)V
    .locals 8

    const-string v0, "Mms:app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImage: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    const/4 v0, -0x4

    if-eq v1, v0, :cond_1

    const/4 v0, -0x2

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez p4, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$64;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$64;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    invoke-virtual {p0, v0, p5, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V

    :goto_0
    return-void

    :cond_3
    const/4 v0, -0x8

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotateImageAsPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    invoke-virtual {p0, v0, p5, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V

    goto :goto_0

    :cond_4
    const v2, 0x7f0900dc

    const/16 v4, 0xa

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0
.end method

.method private addMedia(ILandroid/net/Uri;ZZZ)V
    .locals 9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez p5, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_1
    return-void

    :pswitch_1
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addImage(Landroid/net/Uri;IZZZ)V

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addVideo(Landroid/net/Uri;IZZZ)V

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addAudio(Landroid/net/Uri;IZZZ)V

    goto :goto_0

    :pswitch_4
    const/4 v6, 0x0

    const/16 v8, 0x14

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    :pswitch_5
    const/4 v6, 0x0

    const/16 v8, 0x1a

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    :pswitch_6
    const/4 v6, 0x1

    const/16 v8, 0x1b

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    :pswitch_7
    const/4 v6, 0x1

    const/16 v8, 0x21

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$66;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$66;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto :goto_0

    :cond_2
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    goto :goto_1

    :cond_5
    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    goto :goto_1

    :cond_6
    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    goto :goto_1

    :cond_7
    const-string v0, "text/x-vtodo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1, v0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V

    move v1, v5

    goto :goto_1
.end method

.method private addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    return-void
.end method

.method private addRawMedia(Landroid/net/Uri;ZZZI)V
    .locals 10

    const v9, 0x7f09015d

    const/4 v8, 0x0

    const-string v0, "Mms:app"

    invoke-static {v0, v8}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRawMedia: append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, -0x1

    if-eqz p3, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkCRForRawAttachment()V

    :cond_1
    const/16 v0, 0x1c

    if-eq v0, p5, :cond_2

    const/16 v0, 0x14

    if-eq v0, p5, :cond_2

    const/16 v0, 0x1a

    if-eq v0, p5, :cond_2

    const/16 v0, 0x1b

    if-eq v0, p5, :cond_2

    const/16 v0, 0x21

    if-ne v0, p5, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    :cond_3
    const v2, 0x7f09015d

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p5

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$65;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$65;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, -0x5

    move-object v0, p0

    move v2, v9

    move-object v3, p1

    move v4, p5

    move v5, v8

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0
.end method

.method private addRecipientsListener()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method private addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    :cond_0
    return-void
.end method

.method private addVideo(Landroid/net/Uri;IZZZ)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x2

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    const v2, 0x7f0900dd

    const/16 v4, 0xc

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    :cond_0
    return-void
.end method

.method private addtext(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "additional"

    const-string v2, "namecard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1f

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.memo"

    const-string v3, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "text/memo_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/tasks_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image_location"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAttachmentRemoved()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;I)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_1
.end method

.method private bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V
    .locals 3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToContactHeaderWidget(),list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    goto :goto_0
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .locals 8

    const v7, 0x7f090067

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-ne v1, v6, :cond_3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-interface {p1, v2, v1, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020066

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-le v1, v6, :cond_2

    const/16 v0, 0x82

    invoke-interface {p1, v2, v0, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020137

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private calcAttachListHeight(Landroid/widget/ListView;)I
    .locals 5

    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    const/16 v2, 0x44

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int v4, v2, v0

    mul-int/2addr v4, v1

    add-int/lit8 v3, v4, -0x1

    return v3
.end method

.method private calculateMaxTextLength(Ljava/lang/CharSequence;II)I
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v4, ""

    if-lez p2, :cond_0

    invoke-interface {p1, v8, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    add-int v3, p2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p1, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v0, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    invoke-static {v5, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    :goto_1
    aget v6, v2, v8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v7

    if-lt v6, v7, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_2
    return v6

    :cond_2
    sget v6, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-static {v5, v8, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_2
.end method

.method public static cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x213

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCRForRawAttachment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Raw Attachment"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkInputModeAndSendMessage()V
    .locals 3

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "checkInputModeAndSendMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    goto :goto_0
.end method

.method private checkPendingNotification()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "getView() returns null !"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPendingNotification(),flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->markAsRead()V

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private checkSubjectMargin()V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x8

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method private chooseContact(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private clearFocusAllToButtons()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ToButton;

    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f09008f

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x1080027

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    const v0, 0x7f090092

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f090091

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f03000f

    invoke-static {p3, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080048

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f080047

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    if-nez p2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const v0, 0x7f090090

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$56;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$56;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f09008f

    goto :goto_1
.end method

.method private confirmSendMessageIfNeeded()V
    .locals 9

    const v8, 0x7f090069

    const v7, 0x7f09004f

    const/4 v6, 0x0

    const v5, 0x1080027

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v3, "confirmSendMessageIfNeeded()"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getInternational_SMS_Guard()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    const-string v0, "CRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "TNL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "MAX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "TRG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "DTM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "TMZ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "MBM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "TPL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isReplyAllowedForThread()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmptySMSCAddress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v0

    :cond_6
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->formatInvalidNumbers(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09004e

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09006f

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$7;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageFragment$7;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09006a

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v3, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$8;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v2, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$9;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_8
    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmptySMSCAddress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "CRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "TNL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "MAX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "TRG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "DTM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "TMZ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "MBM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "TPL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_a

    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInternational_SMS_Guard()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto/16 :goto_0
.end method

.method private createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "createAttachmentList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f030007

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateAttachListHeight(Landroid/widget/ListView;)V

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "conversationDeleteMode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private deleteDraft()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    return-void
.end method

.method private deleteMessage()V
    .locals 17

    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessage() mDeleteUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v2, 0x25e4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    return-void

    :cond_1
    const-string v5, "locked=0"

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasLockedMessage:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v2, 0x70a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    const/4 v4, 0x0

    new-instance v5, Lcom/android/mms/ui/DeleteInfo;

    const/4 v6, 0x1

    invoke-direct {v5, v14, v15, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v1, 0x15

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v16

    invoke-virtual {v1, v12, v13, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_8
    if-nez v8, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0x14

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v1, :cond_7

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const-string v1, "mms"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v2, 0x25e4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v5, :cond_f

    const/4 v5, 0x0

    :goto_5
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    :cond_c
    const-string v1, "wpm"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_4

    :cond_d
    cmp-long v1, v12, v9

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_4

    :cond_e
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_4

    :cond_f
    const-string v5, "locked=0"

    goto :goto_5
.end method

.method private deleteSelectedMessages()V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "deleteSelectedMessages()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v5

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, v6, v7, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Z)V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    if-ne v1, v2, :cond_4

    const v1, 0x7f090091

    :goto_4
    invoke-static {v4, v3, v0, v5, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    const v1, 0x7f0901bb

    goto :goto_4

    :cond_5
    move v0, v3

    goto :goto_3
.end method

.method private dialRecipient()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private disableDeleteModeLayout()V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setDeleteMode(Z)V

    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_7
    return-void
.end method

.method private drawComposerPanel()V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "drawComposerPanel()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v2

    if-ne v2, v6, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private drawTopPanel(Z)V
    .locals 3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawTopPanel(),showEmptySubject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    goto :goto_0
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editMessageItem(),type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    :cond_0
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private exitComposeMessageActivity(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->dismissAllDialog()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->noRecipientsInEditor()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    goto :goto_0

    :cond_5
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastForDraftSave:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9

    const/4 v0, 0x0

    const-string v1, "content://com.android.contacts/contacts/as_multi_vcard/"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x37

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%3A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_RAWATTACH_COUNT:I

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f090118

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/android/mms/ui/ComposeMessageFragment$45;

    invoke-direct {v6, p0, v5}, Lcom/android/mms/ui/ComposeMessageFragment$45;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v4, -0x1

    if-ge v0, v5, :cond_0

    const-string v5, "%3A"

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private getImportMediaCount(I)I
    .locals 6

    move v1, p1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    :goto_0
    add-int v4, v1, v0

    sget v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v4, v5, :cond_0

    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    sub-int/2addr v4, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$44;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$44;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .locals 11

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageDate(),uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v10, [Ljava/lang/String;

    const-string v2, "date"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v8, v0, v2

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageDate(),return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v8

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getMessageItem : Bad cursor."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    goto :goto_0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isTemp(Lcom/android/mms/data/ContactList;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    sput-object v1, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    :cond_2
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    goto :goto_0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 7

    const/4 v1, 0x0

    const/4 v5, -0x1

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f080056

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    :goto_1
    if-ne v3, v5, :cond_2

    const v0, 0x7f08000e

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    move v6, v0

    move-object v0, v3

    move v3, v2

    move v2, v6

    :goto_2
    if-eq v3, v2, :cond_1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v4

    goto :goto_2

    :cond_3
    move v2, v5

    move v3, v5

    move-object v4, v1

    goto :goto_1
.end method

.method private getSizeStringView()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private getToastHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ToastHandler thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    new-instance v0, Lcom/android/mms/ui/ToastHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ToastHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private goToConversationList()V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "goToConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    return-void
.end method

.method private handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "handleAddAttachmentError(),error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",mediaTypeStringId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",sendMultiple="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "Mms/ComposeMessageFragment"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$43;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p6

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageFragment$43;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleAttachmentRemoved()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCreationModeDialog(),creationMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0900dc

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v6, 0x7f090137

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900dd

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v6, 0x7f090138

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0900db

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v6, 0x7f090139

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f09015d

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v6, 0x7f090160

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090184

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090185

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleForwardedMessage()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v6, "forwarded_message"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v6, "msg_uri"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string v5, "Mms/ComposeMessageFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleForwardedMessage(),uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v7, "checkCRMode"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, p0, v2, v6}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v7, "subject"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v5, "recipients"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    invoke-static {v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v7, "sms_body"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto :goto_1
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .locals 10

    const v9, 0x7f0901bd

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v5

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v0, "vcard"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$46;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageFragment$46;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/ProgressDialog;Landroid/os/Bundle;Landroid/content/Intent;)V

    const-string v1, "addAttachment"

    invoke-direct {v9, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    :cond_2
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    :cond_3
    move v1, v8

    goto :goto_0

    :cond_4
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v4, v2, v0

    sget v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v4, v5, :cond_5

    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    sub-int v0, v4, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f090058

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v1, v4, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$47;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ComposeMessageFragment$47;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$48;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$48;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$49;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$49;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;ILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-string v1, "addAttachment"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    move v1, v8

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private hasRecipientData(Landroid/net/Uri;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private haveEmailContact(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/String;

    const-string v5, "display_name"

    aput-object v5, v3, v9

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    :goto_0
    return v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private hideMessageList(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setParentTop(Landroid/view/View;Z)V

    return-void
.end method

.method private hideOrShowTopPanel()V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideOrShowTopPanel(),anySubViewsVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private hideRecipientEditor(Z)V
    .locals 4

    const/16 v3, 0x8

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideRecipientEditor(),toFieldHide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipients([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideOrShowTopPanel()V

    return-void
.end method

.method public static init()V
    .locals 0

    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "initActivityState()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->isNeedCreateThread(Landroid/content/Intent;)Z

    move-result v2

    if-eqz p1, :cond_0

    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v5, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v1, v0, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    const-string v0, "exit_on_sent"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->readStateFromBundle(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->loadToButtonState(Landroid/os/Bundle;)V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initActivityState(),has bundle"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "thread_id"

    invoke-virtual {p2, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v4, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    :cond_1
    :goto_1
    const-string v0, "exit_on_sent"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    const-string v0, "sms_body"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "subject"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initActivityState()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_8

    const-string v4, "smsto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "sendto"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0, v5, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showInvalidRecipientsPopup(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v5, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hasRecipientData(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "address"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v5, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v2, v0, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method

.method private initFocus()V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initFocus()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto :goto_0
.end method

.method private initMessageList()V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initMessageList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v5, v2

    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private initRecipientsEditor()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initRecipientsEditor()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setCursorColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->setComposer(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButtonLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const v2, 0x7f0800b1

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ToButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "uk"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v2, 0x4160

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    :cond_5
    new-instance v0, Lcom/android/mms/ui/RecipientsAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0, v1, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByString(Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xbb8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v1, 0x2000005

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setSoundEffect(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$15;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$15;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$16;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$16;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$17;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v1, 0x7f090214

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setHint(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$18;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$18;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const/high16 v2, 0x4180

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private initResourceLayout()V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideRecipientEditor(Z)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyboardStateChanged(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v3, 0x7f090041

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v0

    if-ne v0, v1, :cond_8

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setMMSLayout(Z)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    :cond_0
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSignature()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    :goto_7
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    :goto_8
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideRecipientEditor(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v3, 0x7f090042

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_4

    :cond_8
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    goto/16 :goto_6

    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto :goto_8
.end method

.method private initResourceRefs()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initResourceRefs()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080026

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MmsRichContainer;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setCursorColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanelBg:I

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/MmsRichContainer;->setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->initContainer()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setInputFilterComposeForSMS()V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "setInputFilterComposeForSMS!!!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$53;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$53;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->LanguageSize(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4140

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageContactHeader;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageContactHeader;->init()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08001e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080013

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$54;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$54;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v2, 0x2c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v3, 0x7f080027

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorInputFilter:Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setEditTextCharMaxInputFilter(Landroid/text/InputFilter;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    const/16 v2, 0x10

    if-eq v0, v2, :cond_6

    const/16 v2, 0x12

    if-eq v0, v2, :cond_6

    const/16 v2, 0x22

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4150

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x7

    if-eq v0, v2, :cond_8

    const/16 v2, 0x9

    if-eq v0, v2, :cond_8

    const/16 v2, 0xa

    if-eq v0, v2, :cond_8

    const/16 v2, 0xe

    if-eq v0, v2, :cond_8

    const/16 v2, 0xf

    if-eq v0, v2, :cond_8

    const/16 v2, 0x14

    if-eq v0, v2, :cond_8

    const/16 v2, 0x16

    if-eq v0, v2, :cond_8

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4160

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4180

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "Remove Attach Button!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private initializeContactInfo()V
    .locals 3

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V

    goto :goto_0
.end method

.method private insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V
    .locals 10

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v8

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    sub-int v0, v1, v8

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    aget v5, v3, v5

    add-int/2addr v5, v0

    if-le v4, v5, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x2

    aget v3, v3, v5

    add-int/2addr v0, v3

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v1, v3, -0x7d0

    sub-int v5, v4, v1

    if-gtz v5, :cond_3

    const/4 v0, -0x7

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    :cond_2
    :goto_0
    move-object v7, v1

    move v1, v0

    :goto_1
    const v2, 0x7f090199

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-static {v7, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_6

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-nez v8, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x7

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v5, v8

    invoke-virtual {v0, v8, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/2addr v4, v8

    invoke-virtual {v0, v4, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_5
    if-nez p3, :cond_13

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v1

    move-object v7, v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    const/16 v2, 0x7d0

    if-lt v0, v2, :cond_8

    const/16 v0, 0x7d0

    :goto_4
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_7
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    goto/16 :goto_2

    :cond_8
    if-eqz v1, :cond_9

    move v0, v8

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x7d0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v5

    if-lt v0, v5, :cond_10

    const/4 v0, 0x1

    :goto_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-nez v5, :cond_12

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, v2, v8, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->calculateMaxTextLength(Ljava/lang/CharSequence;II)I

    move-result v0

    :goto_7
    if-le v4, v0, :cond_11

    sub-int v0, v4, v0

    sub-int v5, v3, v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-lez v8, :cond_b

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_b
    if-lez v5, :cond_c

    add-int v0, v8, v5

    invoke-virtual {v2, v8, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_c
    add-int v0, v8, v3

    if-ge v0, v4, :cond_d

    add-int v0, v8, v3

    invoke-virtual {v2, v0, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, -0x7

    :cond_e
    add-int v2, v8, v5

    move-object v7, v1

    move v9, v2

    move v1, v0

    :goto_8
    const v2, 0x7f090199

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_f
    :try_start_3
    invoke-virtual {p1, v9}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_2

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    move-object v7, v2

    move v9, v0

    goto :goto_8

    :cond_12
    move v0, v1

    goto/16 :goto_7

    :cond_13
    move-object v7, v0

    goto/16 :goto_1
.end method

.method private isAttachSupportedType(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vtodo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBottomPanelVisible()Z
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBottomPanelVisible(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isComposerPanelVisible()Z
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isComposerPanelVisible(), return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedCreateThread(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNewCompose()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    return v0
.end method

.method private isPreparedForSending()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v4

    if-eqz v4, :cond_2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreparedForSending(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-lez v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private isPreparedForSendingButton()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreparedForSendingButton(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private isRecipientCallable()Z
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSubjectEditorVisible()Z
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubjectEditorVisible(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTemp(Lcom/android/mms/data/ContactList;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isUnderLength(III)Z
    .locals 1

    add-int v0, p1, p2

    if-gt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDraft()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "loadDraft() called with non-empty working message"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms:app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private loadMessageContent()V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "loadMessageContent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initializeContactInfo()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendFailedNotification()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSignature()V

    :cond_0
    return-void
.end method

.method private loadToButtonState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "toButtonRecipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadToButtonState toButtonRecipients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private noRecipientsInEditor()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveEmptyRecipient()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onKeyboardStateChanged(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setFocusableInTouchMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setFocusable(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_0
.end method

.method private parseMultiPicker(Ljava/util/ArrayList;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v0, 0x1b

    if-eq p2, v0, :cond_2

    const/16 v0, 0x21

    if-ne p2, v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    move-object v0, p0

    move v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_1
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    if-nez v0, :cond_0

    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    new-instance v0, Ljava/io/File;

    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0901bd

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$77;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$77;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/io/File;Landroid/app/ProgressDialog;)V

    const-string v0, "pasteClipBoardData"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnderLength(III)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private previewSlideshow()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0901da

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$67;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$67;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)V

    const-string v0, "previewSlideshow"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private recipientCount()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v0

    :goto_0
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipientCount(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private refreshCheckedList()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->backupCheckedList()V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->refreshChecked(JLjava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->cleanDummyCheckedList()V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v5

    if-ne v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    if-lez v1, :cond_5

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method private removeRecipientsListener()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method private requestClose()V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "requestClose()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    :cond_0
    return-void
.end method

.method private requestDrawPointerOnConverationList()V
    .locals 5

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestDrawPointerOnConverationList() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIsLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/ConversationComposer;->requestDrawPointerOnConverationList(J)Z

    goto :goto_0
.end method

.method private requestFocusOnConverationList()V
    .locals 5

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocusOnConverationList() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIsLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/ConversationComposer;->requsetFocusOnConversationList(J)Z

    goto :goto_0
.end method

.method private resetMessage()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "resetMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideRecipientEditor(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setMMSLayout(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSignature()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->hideSoftInputFromWindow(Landroid/os/IBinder;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->recipienHasEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->createSlideshow()Lcom/android/mms/model/SlideshowModel;

    :cond_2
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private saveDraft(Z)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "saveDraft()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "mWorkingMessage.isDiscarded()=true"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingForSubActivity:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "saveDraft: not worth saving"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    if-eqz v1, :cond_0

    :cond_5
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "saveDraft: discard WorkingMessage and bail"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0

    :cond_6
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastForDraftSave:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090056

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastForDraftSave:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot make Toast. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private saveToButtonState(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "toButtonRecipients"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Mms/ComposeMessageFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveToButtonState toButtonRecipients="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private sendMessage(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage(),bCheckEcmMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromValidRecipients(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "message sending is disabled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09018c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->removeRecipientsListener()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->send()V

    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->addRecipientsListener()V

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    if-eqz v0, :cond_7

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage(),mExitOnSent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    :cond_7
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "sendMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iput v3, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    goto :goto_1
.end method

.method public static setBundle(Landroid/os/Bundle;Z)V
    .locals 0

    sput-object p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    sput-boolean p1, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    return-void
.end method

.method private setConversation(Lcom/android/mms/data/Conversation;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEditingMode(Z)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEditingMode(),isEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getSizeStringView()Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x42e6

    const/high16 v4, 0x4180

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setFocusOnLastToButton()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    goto :goto_0
.end method

.method private setFocusOnNextToButton()Z
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    move v4, v5

    :goto_1
    return v4

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1
.end method

.method private setFocusOnPreToButton()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    invoke-virtual {v3, v7}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    invoke-virtual {v3, v7}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    :cond_0
    return-void

    :cond_1
    move-object v2, v3

    goto :goto_0
.end method

.method private setInputFilterComposeForSMS()V
    .locals 3

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$55;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$55;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setMessageListBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v1, -0xd4d2d0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setBackgroundColor(I)V

    return-void
.end method

.method private setParentTop(Landroid/view/View;Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/16 v4, 0xa

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v4

    if-ne v3, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p2, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method private setRecipientsOnRecipientsEditor()V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v4, v2}, Lcom/android/mms/ui/RecipientsEditor;->setRecipients([Ljava/lang/String;)V

    return-void
.end method

.method private setSendButtonText(Z)V
    .locals 3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSendButtonText(),isMms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private setSignature()V
    .locals 11

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v8, "pref_key_enable_signature"

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget-boolean v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSignature()I

    move-result v4

    const-string v8, "pref_key_signature_text"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v10}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v2, v8, -0x1

    if-gez v2, :cond_3

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v2

    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->cropSelectionIndex(Ljava/lang/CharSequence;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v10}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v9

    invoke-virtual {v8, v9, v7}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto/16 :goto_0
.end method

.method private setSlideDuration(II)V
    .locals 4

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    goto :goto_0
.end method

.method private setTextFieldColor(I)V
    .locals 2

    iput p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextFieldColor:I

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextFieldColor:I

    if-nez v0, :cond_0

    const v0, 0x7f02011a

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    const v0, 0x7f0200ca

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanelBg:I

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f02011b

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    const v0, 0x7f0200cb

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanelBg:I

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    const/high16 v0, -0x100

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    goto :goto_0
.end method

.method private showAddAttachmentDialog(ZI)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v4, p1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;IZI)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$36;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$36;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;Z)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$37;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$37;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showAddtextDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/mms/ui/AddTextSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$38;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$38;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAttachListPanel()V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "showAttachListPanel()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showChooseContactDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$39;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$39;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showDupplicatedRecipientToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showEditTextMaxCharExceedToast(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method private showInternationalSmsRoamGuardDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030030

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f060012

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$10;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageFragment$10;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09006a

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showInvalidRecipientsPopup(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v8, 0x7f0901a9

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[,;]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_6

    aget-object v5, v3, v1

    invoke-direct {p0, v5, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->CheckValidRecipient(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showDupplicatedRecipientToast()V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-nez v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901aa

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$82;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$82;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private showLayoutSelectorDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/mms/ui/LayoutSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$76;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$76;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showMaxRecipientToast()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090192

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showSmileyDialog()V
    .locals 12

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    sget-object v3, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    :goto_0
    if-ge v1, v8, :cond_2

    move v0, v5

    :goto_1
    if-ge v0, v1, :cond_4

    aget v9, v3, v1

    aget v10, v3, v0

    if-ne v9, v10, :cond_1

    move v0, v6

    :goto_2
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v9, "icon"

    aget v10, v3, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "name"

    aget-object v10, v4, v1

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "text"

    aget-object v10, v7, v1

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f03002f

    new-array v4, v11, [Ljava/lang/String;

    const-string v7, "icon"

    aput-object v7, v4, v5

    const-string v5, "name"

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v7, "text"

    aput-object v7, v4, v5

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$58;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$58;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900ee

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$59;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$59;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_4
    move v0, v5

    goto :goto_2

    nop

    :array_0
    .array-data 0x4
        0xa9t 0x0t 0x8t 0x7ft
        0xaat 0x0t 0x8t 0x7ft
        0xabt 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method private showSubjectEditor(Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSubjectEditor(),show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v3, 0x7f08001d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const v3, 0x7f090038

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$20;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageFragment$20;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_2
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    :cond_2
    :goto_3
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const/high16 v3, 0x200

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_b

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setVisibility(I)V

    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    :goto_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideOrShowTopPanel()V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_3

    :cond_a
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    invoke-virtual {v0, v2, v2}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->toggleSoftInput(II)V

    goto/16 :goto_3

    :cond_b
    const/16 v2, 0x8

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    goto :goto_5
.end method

.method private showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    if-ne v2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->clearFocusAllToButtons()V

    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/data/Contact;->IsPresentInContact(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "%s (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/mms/ui/ToButtonMenuAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0}, Lcom/android/mms/ui/ToButtonMenuAdapter;-><init>(Landroid/content/Context;Z)V

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;

    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getId()I

    move-result v4

    invoke-direct {v0, p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$75;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$75;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private showToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09017d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private startActivityforAddMedia(IZ)V
    .locals 11

    const-wide/16 v9, 0x0

    const/16 v3, 0x33

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "image/*"

    if-eqz p2, :cond_2

    const/16 v0, 0x29

    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_3

    const/16 v0, 0x2a

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "return-uri"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    goto :goto_2

    :pswitch_2
    const-string v1, "video/*"

    if-eqz p2, :cond_4

    const/16 v0, 0x2b

    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xc

    goto :goto_3

    :pswitch_3
    if-eqz p2, :cond_6

    const/16 v0, 0x2c

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v1

    int-to-long v1, v1

    :cond_5
    cmp-long v3, v1, v9

    if-lez v3, :cond_7

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "mms"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0xd

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/*"

    if-eqz p2, :cond_8

    const/16 v0, 0x2d

    :goto_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    if-eqz v3, :cond_1

    const-string v4, "com.sec.android.app.myfiles"

    const-string v5, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "FOLDERPATH"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0xe

    goto :goto_5

    :pswitch_5
    if-eqz p2, :cond_9

    const/16 v0, 0x2e

    :goto_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    int-to-long v3, v3

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    int-to-long v7, v2

    if-eqz p2, :cond_c

    cmp-long v2, v7, v9

    if-lez v2, :cond_b

    add-long v9, v5, v7

    cmp-long v2, v9, v3

    if-gez v2, :cond_a

    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    add-long v3, v5, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_7
    const-string v2, "mime_type"

    const-string v3, "audio/amr"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xf

    goto :goto_6

    :cond_a
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    :cond_b
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    :cond_c
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    :cond_d
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1a

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/x-vnote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1b

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/x-vtodo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image_location"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x24

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app_name"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.penmemo.drawingpad"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private startDeleteAnimation([I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDeleteAnimation(), delCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const v2, 0x7f0901d1

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress shown with startDeleteAnimation()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListView;->startDeleteMsgAnimation([I)V

    return-void
.end method

.method private startMsgListQuery()V
    .locals 9

    const/16 v4, 0x2537

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery(),conversationUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->cancelOperation(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startSendAnimation(Ljava/lang/Runnable;)V
    .locals 13

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/high16 v5, 0x4118

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41c8

    iget v7, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4190

    iget v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40a0

    iget v10, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v11, Lcom/android/mms/ui/ComposeMessageFragment$30;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ComposeMessageFragment$30;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v3, v1, v5

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float v9, v1, v6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v8

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v0, v1

    const/high16 v1, 0x3f80

    const v0, 0x3e99999a

    move v10, v0

    move v11, v1

    move v12, v3

    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v12

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    move v10, v0

    move v11, v1

    move v12, v3

    goto :goto_0
.end method

.method private startSendAnimationPrepare(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/high16 v4, 0x42e6

    const/high16 v0, 0x4180

    add-float/2addr v0, v4

    iget v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 v0, 0x1f4

    :goto_0
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$27;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$27;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    add-int/lit16 v2, v0, 0xc8

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$28;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$28;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$29;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$29;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private threadSafeToast(Landroid/app/Activity;II)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method private threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getToastHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/android/mms/ui/ToastHandler;->createToastInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private toastConvertInfo(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x7f090052

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const v0, 0x7f090053

    goto :goto_0
.end method

.method private updateAttachListHeight(Landroid/widget/ListView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->calcAttachListHeight(Landroid/widget/ListView;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateCounter(Ljava/lang/CharSequence;III)I
    .locals 16

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v8

    if-nez v8, :cond_0

    move v10, v9

    :goto_0
    return v10

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v13, 0x0

    aget v13, v8, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    const/4 v13, 0x2

    aget v13, v8, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v15

    if-lt v13, v15, :cond_5

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    const/16 v13, 0x7d0

    if-le v5, v13, :cond_9

    add-int/lit16 v13, v5, -0x7d0

    sub-int v6, p4, v13

    if-gtz v6, :cond_6

    const/4 v9, -0x7

    :goto_2
    const/4 v13, -0x7

    if-ne v9, v13, :cond_a

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/lit16 v13, v13, -0x7d0

    sub-int v6, p4, v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    add-int v14, p2, v6

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    if-gtz v13, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V

    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-lez p3, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    :cond_4
    move v10, v9

    goto :goto_0

    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_7

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move-object/from16 p1, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v14}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v12

    if-nez v12, :cond_8

    const/4 v9, -0x7

    goto :goto_2

    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v13, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    add-int v13, p2, v6

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    add-int v13, p2, p4

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    move v9, v12

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v14}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v9

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string v13, "TAG"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IndexOutOfBoundsException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const/4 v13, -0x2

    if-ne v9, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_3

    :cond_b
    const/4 v13, 0x0

    aget v13, v8, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v15

    if-lt v13, v15, :cond_e

    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v14, v13}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v14}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    if-lez p3, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    :cond_d
    move v10, v9

    goto/16 :goto_0

    :cond_e
    const/4 v13, 0x0

    goto :goto_5
.end method

.method private updateEditorSize()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setEditingMode(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateEditorSize(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setEditingMode(Z)V

    goto :goto_0
.end method

.method private updatePresence(Lcom/android/mms/data/Contact;)V
    .locals 0

    return-void
.end method

.method private updateSendButtonState()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSendingButton()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSendButtonText(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSendButtonState(),enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSendFailedNotification()V
    .locals 5

    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "updateSendFailedNotification()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$21;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$21;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;J)V

    const-string v4, "updateSendFailedNotification"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public alertInvalidRecipientsPopup(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$11;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public alertInvalidRecipientsPopup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public close()V
    .locals 1

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$22;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final cropSelectionIndex(Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    if-gez p2, :cond_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_1
    return p2
.end method

.method public findAvailableViewToFocus()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_0
.end method

.method public getConversationThreadId()J
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMessageCalculateParam(Ljava/lang/CharSequence;)[I
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    :cond_0
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    if-nez v0, :cond_2

    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p1, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v6, ""

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v7

    move-object v0, v6

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    invoke-static {v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_9

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_1
    return-object v0

    :cond_2
    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    move-object v0, v6

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The actual path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    move-object v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    :cond_a
    move-object v0, v6

    goto/16 :goto_1
.end method

.method public getRemoveComoposer()Z
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "getRemoveComoposer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveComposer:Z

    return v0
.end method

.method public declared-synchronized getState()I
    .locals 5

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-gtz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getState(),STATE_NONE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :pswitch_1
    :try_start_2
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getState(),STATE_NOCONV"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getState(),STATE_HASCONV"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleCheckbox(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->toggleCheckBox(JLjava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v6, v0}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_1
.end method

.method public hideSip()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->hideSip()V

    return-void
.end method

.method public initialize(Landroid/os/Bundle;J)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mScreenWidth:I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    const-string v0, "Mms:app"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recipients = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->undeliveredMessageDialog(J)V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initMessageList()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleSendIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleForwardedMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initResourceLayout()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->loadDraft()V

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    goto :goto_1
.end method

.method public isBodyFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComposerClosed()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    return v0
.end method

.method public isDeleteMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public isMms()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecipientsEditorVisible()Z
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyAllowedForThread()Z
    .locals 7

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    array-length v4, v0

    const/4 v2, 0x0

    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    invoke-static {v5, v3}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v6

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onActivityCreated() savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "savedInstanceState exists"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    sput-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/mms/ui/GreekInputHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/GreekInputHandler;-><init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mEncodingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setTextFieldColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleFontSize(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBubbleFontSize:F

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initResourceRefs()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    new-instance v0, Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/GreekInputHandler;-><init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->initialize(Landroid/os/Bundle;J)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_2
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ResponseAxT9Info"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityCreate()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$19;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$19;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnDeleteMsgAnimation(Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onActivityCreated()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v1, 0x3

    const v6, 0x7f0901bd

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingForSubActivity:Z

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_e

    :cond_0
    move v3, v4

    :goto_0
    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    if-nez p3, :cond_3

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onActivityResult : data is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    packed-switch p1, :pswitch_data_0

    :cond_4
    :goto_2
    :pswitch_0
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    if-eqz p3, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2, v5}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_6
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto :goto_2

    :pswitch_2
    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$40;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/mms/ui/ComposeMessageFragment$40;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V

    const-string v0, "addAttachment"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_3
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$41;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/mms/ui/ComposeMessageFragment$41;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V

    const-string v0, "addAttachment"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_4
    if-eqz p3, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    :pswitch_5
    if-eqz p3, :cond_1

    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    :pswitch_6
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    :pswitch_7
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    goto/16 :goto_2

    :pswitch_8
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v2, "vcard"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$42;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$42;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;Landroid/app/ProgressDialog;)V

    const-string v0, "addAttachment"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_7
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I

    move-result v9

    move v7, v4

    :goto_3
    if-ge v7, v9, :cond_8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    const/16 v6, 0x14

    move-object v1, p0

    move v3, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    :pswitch_9
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->parseMultiPicker(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    :pswitch_a
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->parseMultiPicker(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    :pswitch_b
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->parseMultiPicker(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    :pswitch_c
    const-string v0, "contact_number"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto/16 :goto_2

    :pswitch_d
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "REQUEST_PHONE_MULTI"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto/16 :goto_2

    :pswitch_e
    const-string v0, "namecard_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_f
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_10
    const-string v0, "memotext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_11
    const-string v0, "taskstext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_12
    if-eqz p3, :cond_4

    const-string v0, "empty_thread"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto/16 :goto_2

    :pswitch_13
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_4

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    goto/16 :goto_2

    :pswitch_14
    const-string v0, "location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_15
    const/16 v1, 0x50

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "map_image"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onActivityResult REQUEST_CODE_PICK_LOCATION mapImage is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    const-string v1, "image/jpg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    :try_start_0
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto/16 :goto_2

    :pswitch_16
    const-string v0, "isSubject"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "transString"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isSend"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v4, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_e
    move v3, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_13
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_b
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "start onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "end onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAttachmentChanged(I)V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onAttachmentChanged(final int type)"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$24;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$24;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAttachmentChanged(Z)V
    .locals 3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachmentChanged() sendMultiple = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$23;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$23;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(),v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/16 v0, 0x8

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "additional"

    const-string v2, "email-phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_5
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    move v1, v3

    :goto_1
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->ensureImeVisible(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyboardStateChanged(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mScreenWidth:I

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestDrawPointerOnConverationList()V

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setHasOptionsMenu(Z)V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09015e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09015f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->registerForContextMenu(Landroid/view/View;)V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteStarting()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->setSoftInputMode(I)V

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityDestroyed()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "mAttachmentProgressDialog Progress Dismissed with onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    if-eqz v0, :cond_6

    sput-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    :cond_6
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    sput-object v2, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    :cond_7
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "reqReceiver not registered"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEditorAction(),actionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMaxPendingMessagesReached()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraft(Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090106

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->threadSafeToast(Landroid/app/Activity;II)V

    return-void
.end method

.method public onMessageSent()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 13

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tonNewIntent(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/Log;->securedDump(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->noRecipientsInEditor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->setIntent(Landroid/content/Intent;)Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setIntent(Landroid/content/Intent;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    const-string v0, "thread_id"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    const-string v0, "conversationDeleteMode"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v0, 0x0

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    const/4 v0, 0x0

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v5, v6, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    :cond_3
    :goto_2
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onNewIntent: data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", thread_id extra is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     new conversation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mConversation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    cmp-long v0, v5, v9

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :cond_4
    :goto_3
    if-eqz v0, :cond_b

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-lez v0, :cond_b

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    :cond_5
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onNewIntent: same conversation"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    :goto_4
    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversationDeleteModeLayout()V

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v7}, Lcom/android/mms/data/Conversation;->sameRecipient(Landroid/net/Uri;)Z

    move-result v0

    :cond_8
    if-nez v0, :cond_3

    const/4 v1, 0x0

    if-eqz v2, :cond_e

    const-string v9, "smsto"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v1, "sendto"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v1, v2, v9, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showInvalidRecipientsPopup(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->isNeedCreateThread(Landroid/content/Intent;)Z

    move-result v9

    invoke-static {v1, v7, v2, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-direct {p0, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->hasRecipientData(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_b
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onNewIntent: different conversation, initialize..."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :goto_6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->dismissAllDialog()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->disableDeleteModeLayout()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->initialize(Landroid/os/Bundle;J)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->loadMessageContent()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestDrawPointerOnConverationList()V

    goto/16 :goto_4

    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraft(Z)Z

    goto :goto_6

    :cond_e
    move-object v2, v1

    goto :goto_5

    :cond_f
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v9, v1

    :cond_0
    :goto_0
    return v9

    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->previewSlideshow()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, ""

    invoke-virtual {v0, v2, v9}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_1
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_3

    invoke-virtual {p0, v1, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v0, 0x70b

    invoke-static {v1, v2, v3, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, v9, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$34;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$34;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->dialRecipient()V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v9, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddtextDialog()V

    goto/16 :goto_0

    :sswitch_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showChooseContactDialog()V

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$35;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$35;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    :cond_4
    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v4

    const/16 v5, 0x64

    const/4 v6, -0x1

    const v8, 0x7f020048

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->show()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "NullPointerException !!!"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showLayoutSelectorDialog()V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto/16 :goto_0

    :sswitch_12
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/TranslateActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "fromString"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_1
    const-string v0, "editable"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isMms"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "isSubject"

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "hasRecipient"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v3

    if-lez v3, :cond_7

    move v1, v9

    :cond_7
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "fromString"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x66 -> :sswitch_6
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_8
        0x6b -> :sswitch_7
        0x6d -> :sswitch_b
        0x6e -> :sswitch_2
        0x70 -> :sswitch_a
        0x77 -> :sswitch_5
        0x7e -> :sswitch_9
        0x7f -> :sswitch_c
        0x82 -> :sswitch_d
        0x85 -> :sswitch_0
        0x8c -> :sswitch_e
        0x98 -> :sswitch_f
        0x99 -> :sswitch_10
        0x9a -> :sswitch_11
        0x9b -> :sswitch_12
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t\t onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress Dismissed with onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityPause()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    :cond_1
    return-void
.end method

.method public onPreMessageSent()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPrepareComposerOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const/16 v2, 0x6a

    const v7, 0x202014a

    const/16 v6, 0x66

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_2

    const v0, 0x7f0900af

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return v5

    :cond_2
    const v0, 0x7f0900b0

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/16 v0, 0x7e

    const v1, 0x7f0900ee

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_6
    const/16 v0, 0x85

    const v1, 0x7f09005b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020161

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x6d

    const v1, 0x7f090152

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020065

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_7
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f090009

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020068

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x70

    const v1, 0x7f090066

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    sget v1, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-ge v0, v1, :cond_c

    :cond_b
    const/16 v0, 0x99

    const v1, 0x7f09002d

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020062

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-le v0, v5, :cond_d

    const/16 v0, 0x9a

    const v1, 0x7f09002c

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020081

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_d
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "  ComposeMessage     MMS Subject feature enable !!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x64

    const v1, 0x7f09003a

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v1

    if-ge v0, v1, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v0

    :cond_f
    if-ne v0, v5, :cond_18

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09005d

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/16 v1, 0x8c

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v0

    if-ne v0, v5, :cond_19

    const v0, 0x7f090060

    :goto_4
    const/16 v1, 0x98

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_1a

    const v0, 0x7f0900af

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_12
    :goto_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsTranslateMenuON:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_14
    const/16 v0, 0x9b

    const v1, 0x7f0901c5

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020088

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f090009

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020068

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_16
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6d

    const v1, 0x7f090152

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020065

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_17
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x6e

    const v1, 0x7f090153

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020083

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_18
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09016b

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_19
    const v0, 0x7f090061

    goto/16 :goto_4

    :cond_1a
    const v0, 0x7f0900b0

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method public onProtocolChanged(Z)V
    .locals 3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProtocolChanged(),mms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$25;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$25;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t\t onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->setSoftInputMode(I)V

    :cond_1
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(),mEncodingType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityResume()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "recipients"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->writeStateToBundle(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->saveToButtonState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    if-eqz v0, :cond_0

    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sput-boolean v4, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initFocus()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->addRecipientsListener()V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onStart : deleteDraft()!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteDraft()V

    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->loadMessageContent()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    :cond_1
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestDrawPointerOnConverationList()V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setMessageListBackground()V

    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRemoveComoposer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->windowDismissed(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRemoveComoposer()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraft(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->removeRecipientsListener()V

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onStop() was called twice!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$60;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$60;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V

    :cond_0
    return-void
.end method

.method public requestFocusOnComposer()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->requestFocus()Z

    goto :goto_0
.end method

.method protected resetChildView()V
    .locals 7

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V
    .locals 8

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onResizeResult()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 v1, -0x1

    const v2, 0x7f0900dc

    const/4 v3, 0x0

    const/16 v4, 0xa

    move-object v0, p0

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v0

    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    const-string v0, "Mms:app"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v3, v4

    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p0, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    :cond_4
    const v2, 0x7f0900dc

    const/16 v4, 0xa

    move-object v0, p0

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    move-object v3, v4

    goto :goto_1
.end method

.method protected sendSmsInInternationalRoaming(I)V
    .locals 3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSmsInInternationalRoaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "saveSmsToPending: call WorkingMessage.saveSmsToPending"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->saveSmsToPending()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAnimationEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    return-void
.end method

.method public setConversationDeleteModeLayout()V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "setConversationDeleteModeLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void
.end method

.method public setDeleteModeLayout(ZZ)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeleteModeLayout(),isDeleteMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->addDeleteSoftKey()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setDisplayName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllText:Landroid/widget/TextView;

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setDeleteMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->requestLayout()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageContactHeader;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-ne v0, v4, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method public setRemoveComposer(Z)V
    .locals 3

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoveComoposer() isRemoveComposer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveComposer:Z

    return-void
.end method

.method public setSelectAll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setSizeString(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getSizeStringView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageListItem;)V
    .locals 8

    const/16 v4, 0x7c

    const/16 v7, 0x79

    const/16 v3, 0x76

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedPosition:I

    invoke-direct {p0, p1, p2, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f090028

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-ne v0, v6, :cond_3

    :cond_2
    const v0, 0x7f0900af

    invoke-interface {p1, v5, v3, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v0, 0x7f09001c

    invoke-interface {p1, v5, v7, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v0, 0x7f090022

    invoke-interface {p1, v5, v4, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x7d

    const v2, 0x7f0900ad

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_4
    const v0, 0x7f0900af

    invoke-interface {p1, v5, v3, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-direct {p0, p1, v1, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const v0, 0x7f090022

    invoke-interface {p1, v5, v4, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_6
    iget-boolean v0, p3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x81

    const v2, 0x7f0900b2

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v6, :cond_7

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x72

    const v2, 0x7f0900ac

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_7
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_d

    const/16 v0, 0x87

    const v2, 0x7f090154

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_8
    :goto_2
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f09001c

    invoke-interface {p1, v5, v7, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_9
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {p3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    if-eq v2, v6, :cond_a

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    :cond_a
    if-nez v0, :cond_b

    const/16 v0, 0x83

    const v2, 0x7f090023

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_b
    const/16 v0, 0x75

    const v2, 0x7f090014

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsTranslateMenuON:Z

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x9b

    const v2, 0x7f0901c5

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x80

    const v2, 0x7f0900b1

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/16 v2, 0x87

    const/4 v3, 0x0

    const v4, 0x7f090154

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Mms/ComposeMessageFragment"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public showSip()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    sget-boolean v2, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBodyFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$63;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$63;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public showSip(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$62;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$62;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showSizeString(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->expectedMessageSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSizeString(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040013

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method undeliveredMessageDialog(J)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090019

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0
.end method
