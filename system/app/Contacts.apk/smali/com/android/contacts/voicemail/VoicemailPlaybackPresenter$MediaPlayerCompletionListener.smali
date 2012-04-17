.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerCompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;Landroid/media/MediaPlayer;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
