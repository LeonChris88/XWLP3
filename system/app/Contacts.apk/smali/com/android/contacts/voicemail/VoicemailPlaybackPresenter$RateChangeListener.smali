.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RateChangeListener"
.end annotation


# instance fields
.field private final mIncrease:Z

.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->mIncrease:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I

    move-result v2

    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->mIncrease:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1500()[F

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1402(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)I

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-static {}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1500()[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1600()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I

    move-result v3

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;FI)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
