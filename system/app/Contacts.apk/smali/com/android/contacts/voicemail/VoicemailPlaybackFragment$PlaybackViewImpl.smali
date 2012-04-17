.class final Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;
.super Ljava/lang/Object;
.source "VoicemailPlaybackFragment.java"

# interfaces
.implements Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackViewImpl"
.end annotation


# instance fields
.field private final mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mPlaybackSeek:Landroid/widget/SeekBar;

.field private final mPlaybackSpeakerphone:Landroid/widget/ImageButton;

.field private final mRateDecreaseButton:Landroid/widget/ImageButton;

.field private final mRateIncreaseButton:Landroid/widget/ImageButton;

.field private final mStartStopButton:Landroid/widget/ImageButton;

.field private final mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;


# direct methods
.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    iput-object p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    const v0, 0x7f0d01cf

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    const v0, 0x7f0d01cc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    const v0, 0x7f0d01cd

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v0, 0x7f0d01d2

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    const v0, 0x7f0d01d3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v0, 0x7f0d01d0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d01d1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v2, v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableProximitySensor()V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/ProximitySensorAware;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/contacts/ProximitySensorAware;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/ProximitySensorAware;->disableProximitySensor(Z)V

    :cond_0
    return-void
.end method

.method public disableUiElements()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public enableProximitySensor()V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/ProximitySensorAware;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/contacts/ProximitySensorAware;

    invoke-interface {v0}, Lcom/android/contacts/ProximitySensorAware;->enableProximitySensor()V

    :cond_0
    return-void
.end method

.method public enableUiElements()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public getDataSourceContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDesiredClipPosition()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public isSpeakerPhoneOn()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public playbackError(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0a01c9

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    const-string v0, "VoicemailPlayback"

    const-string v1, "Could not play voicemail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public playbackStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public playbackStopped()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public queryHasContent(Landroid/net/Uri;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->access$200()[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "has_content"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v7, :cond_0

    move v1, v7

    :goto_0
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    :goto_1
    return v1

    :cond_0
    move v1, v8

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    move v1, v8

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    throw v1
.end method

.method public registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public sendFetchVoicemailRequest(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FETCH_VOICEMAIL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setClipPosition(II)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    sub-int v3, v0, v1

    invoke-static {v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->access$100(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    return-void
.end method

.method public setFetchContentTimeout()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0a01cc

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    return-void
.end method

.method public setIsBuffering()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0a01ca

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    return-void
.end method

.method public setIsFetchingContent()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0a01cb

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    return-void
.end method

.method public setPositionSeekListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRateDisplay(FI)V
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f0201c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setStartStopListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_0
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
