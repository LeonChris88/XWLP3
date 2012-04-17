.class public Lcom/android/internal/policy/impl/CircleMissedEventWidget;
.super Landroid/widget/LinearLayout;
.source "CircleMissedEventWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleMissedEventWidget$5;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "CircleMissedEventWidget"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private isMiddleLayout:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

.field private mHandler:Landroid/os/Handler;

.field private mMissedCall:Landroid/widget/LinearLayout;

.field private mMissedCallCount:I

.field private mMissedCallMsg:Landroid/widget/LinearLayout;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsg:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mTouchListerner:Landroid/view/View$OnTouchListener;

.field private mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->DEBUG:Z

    const-string v2, "com.android.phone"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->CALL_PKG:Ljava/lang/String;

    const-string v2, "com.android.mms"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    const-string v2, "com.android.email"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->EMAIL_PKG:Ljava/lang/String;

    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MISSED_EVENT_UPDATE:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->REQ_INDEX_CALL_EMAIL:I

    const/16 v2, 0x7b

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->REQ_INDEX_MSG:I

    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->isMiddleLayout:Z

    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$1;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900d4

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setGravity(I)V

    const v2, 0x1020365

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    const v2, 0x1020367

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    const v2, 0x1020364

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    const v2, 0x1020366

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    const v2, 0x1020368

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mTouchListerner:Landroid/view/View$OnTouchListener;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mTouchListerner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockView;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$4;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedEvent()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleUnlockView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidget;Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_3

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_5

    const-string v1, "CircleMissedEventWidget"

    const-string v2, "getNumMissedEvent(missed Call)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_2

    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    const-string v1, "CircleMissedEventWidget"

    const-string v2, "getNumMissedEvent(Unread Msg)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedEvent()V

    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    const-string v1, "CircleMissedEventWidget"

    const-string v2, "sendintent "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateMissedEvent()V
    .locals 7

    const/16 v6, 0x3e7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v4, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)I

    move-result v2

    sget-object v4, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-eq v2, v4, :cond_3

    if-ltz v2, :cond_3

    const/4 v0, 0x1

    if-le v2, v6, :cond_2

    iput v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    :goto_0
    const-string v4, "CircleMissedEventWidget"

    const-string v5, "updateMissedEvent(missed Call Count)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-eq v3, v4, :cond_5

    if-ltz v3, :cond_5

    const/4 v1, 0x1

    if-le v3, v6, :cond_4

    iput v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    :goto_1
    const-string v4, "CircleMissedEventWidget"

    const-string v5, "updateMissedEvent(Unread Msg Count)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedIcons()V

    return-void

    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMissedIcons()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedCallAndMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->invalidate()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->isMiddleLayout:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    :goto_1
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "CircleMissedEventWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, ""

    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v2, 0x10405ab

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-le v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v2, 0x10405a9

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-le v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v2, 0x10405aa

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v2, 0x10405a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v2, 0x10405a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v2, 0x10405a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedEvent()V

    return-void
.end method

.method public setMiddleLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->isMiddleLayout:Z

    return-void
.end method
