.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.app.action.BLUETOOTH_DIAL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v6, "CallLogFragment"

    const-string v7, "mBroadcastReceiver, receive the BLUETOOTH_DIAL intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/contacts/activities/DialtactsActivity;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v5}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v6

    if-ne v6, v9, :cond_0

    const-string v6, "bluetoohdial"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    aget-object v6, v4, v9

    const-string v7, "vcall"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v4, v8

    invoke-static {p1, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeVideoCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    aget-object v6, v4, v8

    invoke-static {p1, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
