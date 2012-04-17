.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

.field private static final LOG_HISTORY_URI:Landroid/net/Uri;

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static final WPM_STATUS_PROJECTION:[Ljava/lang/String;

.field private static mToastHandler:Landroid/os/Handler;

.field private static sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const-string v1, "sub_cs"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V

    return-void
.end method

.method private static final accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            ")I"
        }
    .end annotation

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "accumulateNotificationInfo()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mCount:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "blockingUpdateAllNotifications()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 7

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockingUpdateNewMessageIndicator(),isNew="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isStatusMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p0, v2, v6}, Lcom/android/mms/transaction/MessagingNotification;->getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;Landroid/content/Intent;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v4

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getWpmNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->getAllMessagesCount(Landroid/content/Context;ZLjava/util/Set;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p2}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "TTS_INFO"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "sendBroadcast(intentForVlingo): "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    invoke-static {p1, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CBmessages"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f090123

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_4

    const-string v4, ""

    :goto_1
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v3

    :cond_3
    const-string v4, "Push message"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f09019f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 4

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification(),notificationId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;)V
    .locals 16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getScreenOnOffOption()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const-string v13, "pref_key_backlight"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v13, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    const v13, 0x1000001a

    const-string v14, "New message notification LCD on"

    invoke-virtual {v6, v13, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v14, v15}, Landroid/os/PowerManager;->userActivity(JZ)V

    const-wide/16 v13, 0x1388

    invoke-virtual {v12, v13, v14}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getVibrationOption()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    const-string v13, "pref_key_vibrateWhen"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "pref_key_vibrateWhen"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_1
    const-string v13, "always"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v13, "silent"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v13, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v5, 0x1

    :goto_2
    if-nez v8, :cond_1

    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    :cond_1
    move-object/from16 v0, p2

    iget v13, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Landroid/app/Notification;->defaults:I

    :cond_2
    :goto_3
    const-string v13, "pref_key_ringtone"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    return-void

    :cond_3
    const-string v13, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    const v13, 0x1000001a

    const-string v14, "New message notification LCD on"

    invoke-virtual {v6, v13, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v14, v15}, Landroid/os/PowerManager;->userActivity(JZ)V

    const-wide/16 v13, 0x1388

    invoke-virtual {v12, v13, v14}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    :cond_4
    const-string v13, "pref_key_vibrate"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "pref_key_vibrate"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_5

    const v13, 0x7f0902a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_5
    goto/16 :goto_1

    :cond_5
    const v13, 0x7f0902a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_6
    const v13, 0x7f0902a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    const-string v13, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "vibrate_in_silent"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_c

    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_9

    if-nez v3, :cond_a

    :cond_9
    if-nez v2, :cond_2

    const/4 v13, 0x1

    if-ne v9, v13, :cond_2

    :cond_a
    const/16 v13, 0x11

    move-object/from16 v0, p2

    iput v13, v0, Landroid/app/Notification;->haptic:I

    goto/16 :goto_3

    :cond_b
    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    :cond_d
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    goto/16 :goto_4
.end method

.method private static getAllMessagesCount(Landroid/content/Context;ZLjava/util/Set;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            ")I"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateAllHistoryAsRead(Landroid/content/Context;)V

    new-instance v0, Ljava/util/TreeSet;

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    invoke-static {v0, p3}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, p4}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, p5}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blockingUpdateNewMessageIndicator: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isNew="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, p0, p1, v1, v3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->deliver(Landroid/content/Context;ZII)V

    :goto_0
    return v1

    :cond_0
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "blockingUpdateNewMessageIndicator: new message cancelNotification"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x7b

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;Landroid/content/Intent;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v7, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

    const/4 v8, 0x0

    const-string v9, "date desc"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-nez v15, :cond_0

    const/16 v16, 0x0

    :goto_0
    return-object v16

    :cond_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    const/16 v16, 0x0

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v3, v7}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v20, 0x3e8

    mul-long v12, v7, v20

    const-string v3, "Mms/MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMmsNewMessageNotificationInfo: count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", thread_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "subject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.mms.MMS_BR_FOR_VLINGO"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Mms/MessagingNotification"

    const-string v7, "Broadcast message for Vlingo: "

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v8, 0x7f020134

    const/4 v9, 0x0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v14

    move-object/from16 v7, p0

    invoke-static/range {v5 .. v14}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "200"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v3, "200"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v3, v9}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    throw v3

    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private static getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 12

    move-wide/from16 v0, p5

    invoke-static {p2, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    const/high16 v2, 0x3400

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p2, p0, v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-static {p2, p0, v0, p1}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-object v4, p1

    move v5, p3

    move-wide/from16 v7, p7

    move/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V

    return-object v2
.end method

.method private static getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x46 -> :sswitch_3
    .end sparse-switch
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 9

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 2 AND status = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "Mms/MessagingNotification"

    const-string v2, "getSmsNewDeliveryInfo: address="

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v0, 0x7f0900d0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-direct {v5, v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    throw v0
.end method

.method private static final getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v7, "(type = 1 AND read = 0)"

    const/4 v8, 0x0

    const-string v9, "date desc"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-nez v15, :cond_0

    const/16 v16, 0x0

    :goto_0
    return-object v16

    :cond_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    const/16 v16, 0x0

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/4 v3, 0x4

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x5

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v3, "Mms/MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSmsNewMessageNotificationInfo: count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", thread_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v8, 0x7f020134

    const/4 v9, 0x0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v14

    move-object/from16 v7, p0

    invoke-static/range {v5 .. v14}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "300"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v3, "300"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v3, v9}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 8

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v7

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz p1, :cond_7

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    aput-wide v1, p1, v4

    :cond_1
    :goto_1
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    :cond_2
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez v0, :cond_6

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v6

    if-nez v6, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    aput-wide v1, p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    cmp-long v4, v4, v1

    if-eqz v4, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    :try_start_1
    aput-wide v1, p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static final getWpmNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(read = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-nez v12, :cond_0

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v2, "Push message"

    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v0, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWpmNewMessageNotificationInfo: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f020134

    const/4 v6, 0x0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v5, v13

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.mms.NOTIFICATION_CANCEL_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "undelivered_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "failed_download_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isValidThreadId(Landroid/content/Context;J)Z
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)Ljava/lang/StringBuffer;
    .locals 7

    const/16 v6, 0x2c

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_message_notification"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_1

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_0

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_0

    const v2, 0x7f090188

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 2

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "nonBlockingUpdateNewMessageIndicator()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/content/Context;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .locals 14

    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyFailed(),isDownload="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",noisy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x1

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x2

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v5

    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    const/4 v3, 0x1

    if-le v5, v3, :cond_2

    const v3, 0x7f0900d3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0900d4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    const-string v6, "isFailedNoti"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v6, 0x1400

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v6, 0x7f020136

    iput v6, v9, Landroid/app/Notification;->icon:I

    iput-object v4, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v9, p0, v4, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz p4, :cond_1

    invoke-static {p0, v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;)V

    :cond_1
    if-eqz p1, :cond_7

    const/16 v3, 0x213

    invoke-virtual {v2, v3, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const v3, 0x7f0900e7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const v6, 0x7f0900e9

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v7, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_4

    const-string v4, "failed_download_flag"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_3
    const-string v4, "thread_id"

    move-wide/from16 v0, p2

    invoke-virtual {v7, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v4, v3

    move-object v5, v7

    move-object v3, v6

    goto :goto_1

    :cond_3
    const v3, 0x7f0900e8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    if-gtz v5, :cond_5

    const/16 v2, 0x315

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    aget-wide v10, v4, v5

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    :goto_4
    const-string v10, "undelivered_flag"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-wide/from16 p2, v4

    goto :goto_3

    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_4

    :cond_7
    const/16 v3, 0x315

    invoke-virtual {v2, v3, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    return-void
.end method

.method public static setBadge(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.ConversationComposer"

    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBadgeCount(),count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "BadgeProvider wasn\'t installed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static updateAllHistoryAsRead(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "logtype=? OR logtype=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "200"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "300"

    aput-object v4, v2, v3

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "new"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateAllHistoryAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateClass0SoundnVibrate(Landroid/content/Context;)V
    .locals 5

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_key_enable_notifications"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v2, v1}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;)V

    const/16 v3, 0x3e7

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateDownloadFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 21

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "date"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "msg_box"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "sub"

    aput-object v3, v5, v2

    const/4 v2, 0x4

    const-string v3, "sub_cs"

    aput-object v3, v5, v2

    const/4 v2, 0x5

    const-string v3, "read"

    aput-object v3, v5, v2

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v13, v2

    const/4 v2, 0x5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-wide/16 v16, 0x1

    cmp-long v2, v13, v16

    if-nez v2, :cond_4

    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_3
    const-string v2, "logtype=? AND ( messageid=? OR messageid=?)"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "200"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v17

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    array-length v5, v6

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_8

    aget-object v16, v6, v4

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "date"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v18, "type"

    const-wide/16 v19, 0x1

    cmp-long v2, v13, v19

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "number"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "messageid"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "m_subject"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "new"

    if-nez v15, :cond_7

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "content://logs/mms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v2, "Mms/MessagingNotification"

    const-string v16, "updateHistoryForMms(),address="

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_4
    const-wide/16 v16, 0x2

    cmp-long v2, v13, v16

    if-nez v2, :cond_5

    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 15

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "body"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "type"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "read"

    aput-object v1, v3, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v9, v2

    const/4 v2, 0x5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v12, 0x32

    if-le v2, v12, :cond_4

    const/4 v2, 0x0

    const/16 v12, 0x32

    invoke-virtual {v0, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    const-string v0, "logtype=? AND messageid=?"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "300"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    sget-object v13, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v13, v0, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "type"

    const-wide/16 v13, 0x1

    cmp-long v0, v9, v13

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "number"

    invoke-virtual {v12, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "messageid"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "m_content"

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "new"

    if-nez v11, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "content://logs/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateHistoryForSms(),address="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method private static updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "logtype=? AND messageid=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "new"

    if-eqz p4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHistoryReadFlag(),messageid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 10

    const-string v6, "Mms/MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotification(),isNew="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pref_key_enable_notifications"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/app/Notification;

    move-wide/from16 v0, p6

    invoke-direct {v3, p3, p5, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object/from16 v0, p8

    iput-object v0, v3, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    move/from16 v0, p9

    iput v0, v3, Landroid/app/Notification;->missedCount:I

    const/4 v6, 0x1

    move/from16 v0, p10

    if-le v0, v6, :cond_1

    const v6, 0x7f0900d2

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p8

    new-instance p1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x3400

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "vnd.android-dir/mms-sms"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 v6, 0x1

    move/from16 v0, p9

    if-le v0, v6, :cond_2

    const v6, 0x7f0900d1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {p0, v6, p1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v3, p0, v0, p2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz p4, :cond_5

    invoke-static {p0, v5, v3}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;)V

    iget-object v6, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "GATE"

    const-string v7, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v6, "Mms/MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New message, updateNotification() sound path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/app/Notification;->flags:I

    iget v6, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v3, Landroid/app/Notification;->defaults:I

    const/4 v6, 0x0

    sget-object v7, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v6, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "GATE"

    const-string v7, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v6, 0x7b

    invoke-virtual {v2, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_5
    const-string v6, "Mms/MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotification() sound path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V
    .locals 9

    const v5, 0x7f0900c6

    const v3, 0x7f020133

    const/16 v8, 0x378

    const/4 v7, 0x1

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Mms/MessagingNotification"

    const-string v2, "updateReportNotification,type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",threadId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2}, Lcom/android/mms/transaction/MessagingNotification;->getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput v3, v4, Landroid/app/Notification;->icon:I

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    invoke-static {p5, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    const/high16 v5, 0x3400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pref_key_enable_notifications"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0, v8}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    iput-object v2, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, p0, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {p0, v5, v4}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;)V

    invoke-virtual {v0, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2}, Lcom/android/mms/transaction/MessagingNotification;->getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput v3, v4, Landroid/app/Notification;->icon:I

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0900c7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2}, Lcom/android/mms/transaction/MessagingNotification;->getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f020137

    iput v3, v4, Landroid/app/Notification;->icon:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateSendFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5

    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    :cond_0
    return-void

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
