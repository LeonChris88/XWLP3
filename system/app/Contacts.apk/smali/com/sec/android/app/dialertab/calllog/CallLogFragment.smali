.class public Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.super Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;
    }
.end annotation


# static fields
.field public static FMC_MODE:Z

.field private static bCallLogPaused:Z

.field public static bCheckedBefore:Z

.field private static bCheckedFirstTime:Z

.field private static mContext:Landroid/content/Context;

.field private static mContextForDialog:Landroid/content/Context;

.field private static mNumberForDialog:Ljava/lang/String;


# instance fields
.field private final CONTEXTMENU_BLOCKCONTACT:I

.field private final CONTEXTMENU_CALL:I

.field private final CONTEXTMENU_EDITNUMBER:I

.field private final CONTEXTMENU_REMOVELOG:I

.field private final CONTEXTMENU_SAVECONTACT:I

.field private final CONTEXTMENU_SENDINFO:I

.field private final CONTEXTMENU_SENDMSG:I

.field private final CONTEXTMENU_UNBLOCKCONTACT:I

.field private final CONTEXTMENU_VIEWCONTACT:I

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field public mAddContactDlg:Landroid/app/AlertDialog;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

.field public mCallType:I

.field private mItemPosition:Ljava/lang/Integer;

.field private mItemSize:Ljava/lang/Integer;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field public mScrollToTop:Z

.field private mShowOptionsMenu:Z

.field public mStrNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mViewByDlg:Landroid/app/AlertDialog;

.field private mVoiceMailNumber:Ljava/lang/String;

.field public mWhichButton:I

.field private mstrName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallType:I

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_CALL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SENDMSG:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_EDITNUMBER:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SENDINFO:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_VIEWCONTACT:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SAVECONTACT:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_BLOCKCONTACT:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_UNBLOCKCONTACT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVELOG:I

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    return p0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNumberForDialog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/android/contacts/util/AsyncTaskExecutor;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    return-object v0
.end method

.method private loadPref()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "logslist_pref"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reject_popup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    return-void
.end method

.method private openViewByDialog()V
    .locals 4

    const/4 v0, 0x0

    const/high16 v0, 0x7f06

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a029d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0286

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private refreshData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->invalidateCache()V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startCallsQuery()V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnEntry()V

    return-void
.end method

.method private removeMissedCallNotifications()V
    .locals 2

    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CallLogFragment"

    const-string v1, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CallLogFragment"

    const-string v1, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f0400ad

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v4, 0x7f0d01ec

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0d01ed

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    sput-object p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    sput-object p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNumberForDialog:Ljava/lang/String;

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;

    invoke-direct {v4, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0297

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a02b9

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a02b8

    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;

    invoke-direct {v6, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateOnEntry()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(Z)V

    return-void
.end method

.method private updateOnExit()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(Z)V

    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V

    :cond_1
    return-void
.end method

.method private updateSweepActionFeasibility()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isSweepActionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->configureSweepActionCallbackAndListener()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public callSelectedEntry()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionBarCallBack(Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;)V

    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSweepActionBarCallBack()Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method public fetchLogs()V
    .locals 2

    const-string v0, "CallLogFragment"

    const-string v1, "========= fetchLogs ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    return-void
.end method

.method public getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method protected final getSweepActionBarCallBack()Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isSweepActionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const-string v1, "CallLogFragment"

    const-string v2, "========= onCallsFetched ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v4, :cond_2

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    :cond_2
    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->smoothScrollToPosition(I)V

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v9

    :pswitch_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->editCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openSaveToDialog()V

    goto :goto_0

    :pswitch_3
    const/4 v6, -0x1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogsConfirmDlg()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "CallLogFragment"

    const-string v1, "========= onCreate ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->loadPref()V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->haveVOIPCalls(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 17

    invoke-super/range {p0 .. p3}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const-string v1, "CallLogFragment"

    const-string v2, "========= onCreateContextMenu ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v15, 0x0

    const v1, 0x7f0d0082

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    const v1, 0x7f0d007f

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    const v1, 0x7f0d007f

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    const v1, 0x7f0d0083

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v4, 0x0

    const v5, 0x7f0a028e

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a028f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v11}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0a0290

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    const v5, 0x7f0a0291

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v4, 0x0

    const v5, 0x7f0a028e

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v4, 0x0

    const v5, 0x7f0a0293

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v4, 0x0

    const v5, 0x7f0a0295

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "reject_number="

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " AND reject_match="

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reject_number"

    aput-object v2, v3, v1

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v4, 0x0

    const v5, 0x7f0a0297

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v4, 0x0

    const v5, 0x7f0a0294

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v4, 0x0

    const v5, 0x7f0a0296

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v4, 0x0

    const v5, 0x7f0a0296

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v4, 0x0

    const v5, 0x7f0a0294

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_6
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x0

    const v5, 0x7f0a029b

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_4

    :cond_7
    const-string v1, "CallLogFragment"

    const-string v2, "onCreateContextMenu - Cursor c is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    if-nez v0, :cond_0

    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "CallLogFragment"

    const-string v2, "========= onCreateView ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "CallLogFragment"

    const-string v1, "========= onDestroy ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "additional"

    const-string v3, "phone-need-call"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "view_by"

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0247
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "CallLogFragment"

    const-string v1, "========= onPause ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->saveViewStatusPreference()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    if-nez v0, :cond_0

    const v0, 0x7f0d0249

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CallLogFragment"

    const-string v1, "========= onResume ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData()V

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->haveVOIPCalls(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onStop()V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnExit()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const-string v0, "CallLogFragment"

    const-string v1, "========= onViewCreated ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsCanFocus(Z)V

    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData()V

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnExit()V

    :cond_2
    return-void
.end method

.method public openSaveToDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0296

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060003

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0286

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAddContactDlg:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAddContactDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public registerForList(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public saveViewStatusPreference()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "logslist_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "reject_popup"

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected setCallLogAdapter(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    return-void
.end method

.method protected final setSweepActionBarCallBack(Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateSweepActionFeasibility()V

    return-void
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    return-void
.end method

.method public showDeleteLogsConfirmDlg()V
    .locals 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a02b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02b8

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0286

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v2, 0x7f0a0038

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public startCallsQuery()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    return-void
.end method
