.class public Lcom/sec/android/app/dialertab/calllog/CallLogNotificationsService;
.super Landroid/app/IntentService;
.source "CallLogNotificationsService.java"


# instance fields
.field private mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CallLogNotificationsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogNotificationsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogNotificationsService;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v1, "com.sec.android.app.dialertab.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogNotificationsService;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markNewVoicemailsAsOld()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "com.sec.android.app.dialertab.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NEW_VOICEMAIL_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p0}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->updateNotification(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const-string v1, "CallLogNotificationsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleIntent: could not handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
