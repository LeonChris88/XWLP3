.class public Lcom/android/mms/transaction/PushReceiverService;
.super Landroid/app/Service;
.source "PushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/PushReceiverService$1;,
        Lcom/android/mms/transaction/PushReceiverService$WPMInfo;,
        Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final WPM_INFO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mServiceHandler:Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "action"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/PushReceiverService;->WPM_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

    iput-object v0, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/PushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/PushReceiverService;->handleSiMessage(Lcom/android/mms/transaction/WapPushMessage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/PushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/PushReceiverService;->handleSlMeeesage(Lcom/android/mms/transaction/WapPushMessage;)V

    return-void
.end method

.method private deleteWPMInfo(I)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "Mms/PushReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteWPMInfo. id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wap-push-messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/PushReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v1, v0, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private handleSiMessage(Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 10

    const-wide/16 v8, -0x1

    const/16 v7, 0x9

    const-string v3, "Mms/PushReceiverService"

    const-string v4, "handleSiMessage."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    const-string v3, "Mms/PushReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discard message because of expiration. expires= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/PushReceiverService;->selectWPMInfo(Lcom/android/mms/transaction/WapPushMessage;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-nez v3, :cond_2

    const-string v3, "Mms/PushReceiverService"

    const-string v4, "insert message because of no create time"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_4

    invoke-static {v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/PushReceiverService;->deleteWPMInfo(I)V

    const-string v3, "Mms/PushReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discard message because of deletion. , recv_action= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    const-string v3, "Mms/PushReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discard message because of Handling of out of order delivery. stored_created= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "recv_created= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/PushReceiverService;->deleteWPMInfo(I)V

    const-string v3, "Mms/PushReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process Replacement. 01>stored_created= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recv_created= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_5

    const-string v3, "Mms/PushReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discard message because of deletion. recv_action= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    const-string v3, "Mms/PushReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discard message because of action_signal_none. recv_action= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "address"

    const-string v4, "Push message"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "body"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "type"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "href"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "si_id"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "created"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "si_expires"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "action"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/PushReceiverService;->insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto/16 :goto_0
.end method

.method private handleSlMeeesage(Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "Mms/PushReceiverService"

    const-string v3, "handleSlMessage."

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/mms/transaction/PushReceiverService;->selectWPMInfoByHref(ILjava/lang/String;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$200(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I

    move-result v4

    invoke-static {v4}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v4

    if-lt v3, v4, :cond_4

    const-string v1, "Mms/PushReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discard message because of priority. , recv_action_priority= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stored_action+priority= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$200(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/PushReceiverService;->deleteWPMInfo(I)V

    :cond_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "address"

    const-string v4, "Push message"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "type"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "href"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "action"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/PushReceiverService;->insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    :cond_6
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Landroid/content/Context;)I

    move-result v3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/PushReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_7

    move v2, v1

    :cond_7
    if-nez v2, :cond_8

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    if-nez v3, :cond_9

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/mms/transaction/PushReceiverService;->processHref(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_9
    if-ne v3, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/PushMessageDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "href"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/PushReceiverService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method private insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    const-string v0, "Mms/PushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertWPMInfo. _values= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/PushReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static processHref(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const-string v2, "wtai://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mms/PushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processUri uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private selectWPMInfo(Lcom/android/mms/transaction/WapPushMessage;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/PushReceiverService;->selectWPMInfoBySiId(ILjava/lang/String;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/PushReceiverService;->selectWPMInfoByHref(ILjava/lang/String;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "Mms/PushReceiverService"

    const-string v2, "No ID for si message is provided"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selectWPMInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;
    .locals 12

    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "wap-push-messages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v5, v11, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    aput-object p3, v5, v10

    invoke-virtual {p0}, Lcom/android/mms/transaction/PushReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/PushReceiverService;->WPM_INFO_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;

    invoke-direct {v8, p0, v6}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;-><init>(Lcom/android/mms/transaction/PushReceiverService;Lcom/android/mms/transaction/PushReceiverService$1;)V

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v8, v0}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$102(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;I)I

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$002(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;J)J

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v8, v0}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$202(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;I)I

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8
.end method

.method private selectWPMInfoByHref(ILjava/lang/String;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;
    .locals 4

    const-string v1, "type=? and href=?"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/transaction/PushReceiverService;->selectWPMInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;

    move-result-object v0

    const-string v2, "Mms/PushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectWPMInfoByHref. href= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", _id= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method

.method private selectWPMInfoBySiId(ILjava/lang/String;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;
    .locals 4

    const-string v1, "type=? and si_id=?"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/transaction/PushReceiverService;->selectWPMInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;

    move-result-object v0

    const-string v2, "Mms/PushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectWPMInfoBySiId. siId= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", _id= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "Mms/PushReceiverService"

    const-string v1, "onBind."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const-string v1, "Mms/PushReceiverService"

    const-string v2, "onCreate."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Mms/PushReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/PushReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "Mms/PushReceiverService"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string v1, "Mms/PushReceiverService"

    const-string v2, "onStartCommand."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x2

    return v1
.end method
