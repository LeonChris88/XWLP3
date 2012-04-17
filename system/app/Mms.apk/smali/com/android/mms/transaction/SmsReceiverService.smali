.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final REPLACE_PROJECTION:[Ljava/lang/String;

.field private static final SEND_PROJECTION:[Ljava/lang/String;

.field private static mSending:Z


# instance fields
.field private final GROUP_SMS_PROJECTION:[Ljava/lang/String;

.field private mBeforeError:I

.field private mMessage:Ljava/lang/String;

.field mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

.field private mRecipient:Ljava/lang/String;

.field private mResultCode:I

.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "protocol"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "group_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$4;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsReceiverService$4;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method public static FilterCLRF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    const/4 v0, 0x0

    add-int/lit8 v3, v1, 0x1

    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    sub-int v5, v3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsServiceCenter(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/SmsReceiverService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsCbReceived(Landroid/content/Intent;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForSetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForGetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSIMStatus(Landroid/content/Intent;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)V
    .locals 5

    const/4 v1, 0x0

    aget-object v0, p2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p2

    const/4 v2, 0x1

    if-ne v4, v2, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pdu"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ril.sms.gcf-mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "On"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms.getOriginatingAddress() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms.getDisplayOriginatingAddress(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "address"

    const v4, 0x7f090172

    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleBootCompleted()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "handleBootCompleted()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->deleteTempConversation()V

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToFailedBox()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    invoke-static {p0, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "handleBootCompleted()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleCbSettingsAvailable(Landroid/content/SharedPreferences;)V
    .locals 7

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v0, 0x3e8

    const-string v2, "pref_cb_my_channel_max_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_sim_ready_status"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v2

    array-length v3, v2

    if-le v3, v0, :cond_0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-short v5, v2, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ChannelUtils;->updateSubscription(Landroid/content/Context;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v0

    const-string v2, "pref_cb_my_channel_enabled_count"

    array-length v0, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private handleErrCodeForGetCbReceived(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "getRsp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "[CB] error code = Unknown Object received "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleErrCodeForSetCbReceived(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "setRsp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "[CB] error code = Unknown Object received "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePCWLockMessage(Z)V
    .locals 4

    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_pcw_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCW LOCK. Send Lock message. BootComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_phone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleSIMStatus(Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .locals 5

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "handleSIMStatus()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSIMStatus(): SIM_STATUS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "pref_sim_ready_status"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_sim_ready_status"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private handleSendMessage()V
    .locals 1

    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    :cond_0
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    :cond_0
    return-void
.end method

.method private handleSmsCbReceived(Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "pref_key_cb_settings_activation"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Config.TelephonyFeature.CONFIG_CB_FEATURE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "received SMS_CB_RECEIVED_ACTION with no extras!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p0, v0, p2}, Lcom/android/mms/transaction/SmsReceiverService;->storeCbMessage(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/SharedPreferences;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v5, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleSmsReceived()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    aget-object v3, v1, v7

    new-instance v2, Lcom/android/mms/transaction/MTMessageParser;

    invoke-direct {v2}, Lcom/android/mms/transaction/MTMessageParser;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/transaction/MTMessageParser;->messageParser(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p0, v1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleSmsReceived..."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsReceived"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "(replace)"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " messageUri: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", address: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", body: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "GATE"

    const-string v5, "<GATE-M>INCOMING_MSG</GATE-M>"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>SMSSENDERINFO:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_0

    invoke-static {p0, v8, v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_0

    :cond_4
    const-string v4, ""

    goto :goto_1
.end method

.method private handleSmsSent(Landroid/content/Intent;I)V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "handleSmsSent()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sput-boolean v6, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    const-string v3, "SendNextMsg"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsReceiverService;->updateGroupType(Landroid/net/Uri;I)Z

    move-result v1

    if-nez v0, :cond_1

    sput-boolean v5, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmsSent sending uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    if-nez v3, :cond_3

    invoke-static {p0, v2, v7, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmsSent: failed to move message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to sent folder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    iput v6, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    :cond_4
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "GATE"

    const-string v4, "<GATE-M>SMS_SENT_SUCCESS</GATE-M>"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eq v3, v7, :cond_7

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmsSent: no service, queuing message w/ uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "GATE"

    const-string v4, "<GATE-M>SMS_MSG_ERROR</GATE-M>"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V

    invoke-static {p0, v2, v8, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v4, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_a
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-ne v3, v8, :cond_b

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/transaction/SmsReceiverService$2;

    invoke-direct {v4, p0}, Lcom/android/mms/transaction/SmsReceiverService$2;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_b
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_c

    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "handleSmsSent : DSAC Failure "

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {p0, v2, v3, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/transaction/SmsReceiverService$3;

    invoke-direct {v4, p0}, Lcom/android/mms/transaction/SmsReceiverService$3;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_c
    iput p2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    invoke-direct {p0, v2, p2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V

    if-eqz v0, :cond_0

    iput v6, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto/16 :goto_0
.end method

.method private handleSmsServiceCenter(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const-string v4, "smsc"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SMS]handleSmsServiceCenter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    aget-object v4, v0, v7

    const-string v5, "NotSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09011c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "pref_key_manage_smsc_address"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    const-string v4, "pref_key_manage_smsc_address"

    aget-object v5, v0, v7

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 3

    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "insertMessage()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private messageFailedToSend(Landroid/net/Uri;IZ)V
    .locals 3

    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageFailedToSend msg failed uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private moveOutboxMessagesToFailedBox()I
    .locals 7

    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "type"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "error_code"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveOutboxMessagesToFailedBox messageCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method private registerForServiceStateChanges()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "registerForServiceStateChanges"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 23

    const-string v2, "Mms/SmsReceiverService"

    const-string v4, "replaceMessage()"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v22, p2, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v22, p2, v16

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "body"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v21

    const-string v6, "address = ? AND protocol = ?"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v19, v7, v2

    const/4 v2, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    sget-object v4, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_2

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move-object v9, v3

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v10

    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct/range {p0 .. p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "sendPCWLockMessage : conManager is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/16 v7, 0xff

    const/4 v9, 0x2

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "sendPCWLockMessage : send SMS complete."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private storeCbMessage(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/SharedPreferences;)Landroid/net/Uri;
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "storeCbMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "pdus"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v2, :cond_1

    :cond_0
    const-string v1, "Mms/SmsReceiverService"

    const-string v5, "received SMS_CB_RECEIVED_ACTION with no pdus"

    invoke-static {v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    aget-object v1, v0, v9

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsCbMessage;->createFromPdu([B)Landroid/telephony/SmsCbMessage;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v1, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to create SmsCbMessage from PDU: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "pref_key_cb_channel_selection"

    const-string v6, "All channels"

    invoke-interface {p3, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Mms/SmsReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chSelection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "My channel"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "en"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "pref_key_english"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_3
    const-string v1, "de"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "pref_key_german"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v3

    goto :goto_0

    :cond_4
    const-string v1, "it"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "pref_key_italian"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    move-object v0, v3

    goto :goto_0

    :cond_5
    const-string v1, "fr"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "pref_key_french"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    move-object v0, v3

    goto :goto_0

    :cond_6
    const-string v1, "es"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "pref_key_spanish"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7

    move-object v0, v3

    goto :goto_0

    :cond_7
    const-string v1, "nl"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "pref_key_dutch"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_8

    move-object v0, v3

    goto :goto_0

    :cond_8
    const-string v1, "sv"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "pref_key_swedish"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_9

    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    const-string v1, "da"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "pref_key_danish"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v0, v3

    goto/16 :goto_0

    :cond_a
    const-string v1, "pt"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "pref_key_portuguese"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v0, v3

    goto/16 :goto_0

    :cond_b
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_d

    aget-object v1, v0, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsCbMessage;->createFromPdu([B)Landroid/telephony/SmsCbMessage;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/telephony/SmsCbMessage;->appendToBody(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_c
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to append to SmsCbMessage from PDU: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v0, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v0, "body"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "address"

    const-string v1, "CBmessages"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "protocol"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v1, v4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 23

    const-string v19, "Mms/SmsReceiverService"

    const-string v20, "storeMessage()"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    aget-object v16, p2, v19

    const/4 v12, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p2

    array-length v13, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    iget-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v19, 0x1580

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x1581

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x1582

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x1583

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x1585

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x1586

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x1589

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x158a

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x15e1

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x15e3

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x2134

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x2135

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    const/16 v19, 0x2136

    move/from16 v0, v19

    if-ne v14, v0, :cond_7

    :cond_0
    const-string v19, "<<"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v19, 0x7f090151

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ">>\n"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    :cond_1
    if-nez v12, :cond_2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_9

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    const-string v19, "<<"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v19, 0x7f090151

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ">>\n"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const-string v19, "body"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "thread_id"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    const-string v19, "address"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual {v6, v4}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->reload()V

    :cond_3
    :goto_1
    if-eqz v17, :cond_4

    const-wide/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-nez v19, :cond_5

    :cond_4
    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v19, "thread_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v19, "ril.sms.gcf-mode"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v19, "On"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const-string v19, "Mms/SmsReceiverService"

    const-string v20, "GCF Mode On"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v19, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    add-int/lit8 v19, v19, 0x1

    sput v19, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    sget v19, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_b

    const-string v19, "Mms/SmsReceiverService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MmsConfig.SMS_DB_COUNT : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v15, v1, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    sget v19, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-virtual/range {v19 .. v22}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    :goto_3
    return-object v9

    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v13, :cond_2

    aget-object v16, p2, v8

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    new-instance v4, Ljava/lang/String;

    const-string v19, "Unknown"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v19, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const/4 v9, 0x0

    goto :goto_2

    :cond_c
    const-string v19, "Mms/SmsReceiverService"

    const-string v20, "GCF Mode Off"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v15, v1, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_2
.end method

.method private unRegisterForRoamingStatusChanges()V
    .locals 2

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "unRegisterForRoamingStatusChanges"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unRegisterForServiceStateChanges()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "unRegisterForServiceStateChanges"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateGroupType(Landroid/net/Uri;I)Z
    .locals 17

    const/4 v2, 0x6

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id=(SELECT group_id FROM sms WHERE _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND _id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_6
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v8, v2, :cond_7

    const/4 v2, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_1
    const/4 v12, 0x1

    :pswitch_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    const/4 v14, 0x5

    if-nez v12, :cond_8

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    const/4 v14, 0x2

    :cond_8
    :try_start_2
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "group_type"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Mms/SmsReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    const-string v3, "result"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    :cond_1
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput p3, v1, Landroid/os/Message;->arg1:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x2

    return v2
.end method

.method public declared-synchronized sendFirstQueuedMessage()V
    .locals 18

    monitor-enter p0

    :try_start_0
    const-string v1, "Mms/SmsReceiverService"

    const-string v5, "sendFirstQueuedMessage()"

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x1

    const-string v1, "content://sms/queued"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    if-eqz v12, :cond_2

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v14

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    new-instance v4, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v17

    int-to-long v8, v0

    const/16 v1, 0x20

    if-ne v15, v1, :cond_4

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms/SmsReceiverService"

    const-string v5, "sendFirstQueuedMessage..."

    invoke-static {v1, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendFirstQueuedMessage "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", address: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", threadId: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", body: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const-wide/16 v8, -0x1

    :try_start_2
    invoke-virtual {v4, v8, v9}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v16, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getInternational_SMS_Guard()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForRoamingStatusChanges()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    :catch_0
    move-exception v13

    :try_start_4
    const-string v1, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", caught "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    const/4 v1, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1, v5}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v16, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method
