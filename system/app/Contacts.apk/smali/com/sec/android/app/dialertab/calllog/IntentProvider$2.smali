.class final Lcom/sec/android/app/dialertab/calllog/IntentProvider$2;
.super Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$CallType:I

.field final synthetic val$number:Ljava/lang/String;


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sip"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "LGT_RAD_CALLOG"

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$2;->val$CallType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "SMS_CALL"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    :cond_0
    const-string v2, "tel"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
