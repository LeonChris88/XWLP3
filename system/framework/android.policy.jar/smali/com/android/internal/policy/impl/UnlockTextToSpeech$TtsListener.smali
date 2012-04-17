.class Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;
.super Ljava/lang/Object;
.source "UnlockTextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnlockTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/UnlockTextToSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/UnlockTextToSpeech;Lcom/android/internal/policy/impl/UnlockTextToSpeech$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;-><init>(Lcom/android/internal/policy/impl/UnlockTextToSpeech;)V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLanguage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultCountry:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLocVariant:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->access$102(Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->doSpeak()V

    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->destroy()V

    return-void
.end method
