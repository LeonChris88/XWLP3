.class public Lcom/sec/android/app/dialertab/calllog/CallLogActivity;
.super Landroid/app/Activity;
.source "CallLogActivity.java"


# instance fields
.field private mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getFragment()Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->callSelectedEntry()V

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
