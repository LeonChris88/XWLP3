.class public Lcom/android/mms/transaction/MmsMessageSender;
.super Ljava/lang/Object;
.source "MmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessageSize:J

.field private final mMessageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x1

    new-array v5, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v0

    :try_start_0
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x12

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MmsMessageSender"

    const-string v2, "Invalide header value"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Mms/MmsMessageSender"

    const-string v2, "Persist message failed"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Mms/MmsMessageSender"

    const-string v2, "Invalid message ID value"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/16 v4, 0x80

    const/4 v8, 0x0

    const/16 v5, 0x81

    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_mms_expiry"

    const-wide/32 v6, 0x93a80

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    const-string v3, "pref_key_mms_priority"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    const-string v3, "pref_key_mms_delivery_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    const-string v3, "pref_key_mms_read_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method


# virtual methods
.method public queueMessageForPending(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    const/16 v3, 0x80

    if-eq v2, v3, :cond_0

    new-instance v1, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    const-string v2, "personal"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    iget-wide v2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setMessageSize(J)V

    iget-object v2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    return v0
.end method
