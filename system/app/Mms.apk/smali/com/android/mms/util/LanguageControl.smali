.class public Lcom/android/mms/util/LanguageControl;
.super Ljava/lang/Object;
.source "LanguageControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/LanguageControl$DetectTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mFromLanguageKey:Ljava/lang/String;

.field private static mProgressDialog:Landroid/app/ProgressDialog;

.field private static mToLanguageKey:Ljava/lang/String;


# instance fields
.field final handler:Landroid/os/Handler;

.field mClient:Lorg/apache/http/client/HttpClient;

.field private mContext:Landroid/content/Context;

.field mGetRequest:Lorg/apache/http/client/methods/HttpGet;

.field mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "Mms/LanguageControl"

    sput-object v0, Lcom/android/mms/util/LanguageControl;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/mms/util/LanguageControl;->mFromLanguageKey:Ljava/lang/String;

    sput-object v1, Lcom/android/mms/util/LanguageControl;->mToLanguageKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mms/util/LanguageControl$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/LanguageControl$1;-><init>(Lcom/android/mms/util/LanguageControl;)V

    iput-object v0, p0, Lcom/android/mms/util/LanguageControl;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/util/LanguageControl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/mms/util/TranslateLanguages;

    iget-object v1, p0, Lcom/android/mms/util/LanguageControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mms/util/TranslateLanguages;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/util/LanguageControl;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    return-void
.end method

.method static synthetic access$000()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/android/mms/util/LanguageControl;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/util/LanguageControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/util/LanguageControl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/LanguageControl;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public detectLanguage(Ljava/lang/String;Z)V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/android/mms/util/LanguageControl;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/util/LanguageControl;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/util/LanguageControl;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/mms/util/LanguageControl;->mContext:Landroid/content/Context;

    const-string v3, ""

    iget-object v4, p0, Lcom/android/mms/util/LanguageControl;->mContext:Landroid/content/Context;

    const v5, 0x7f0901c8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    sput-object v2, Lcom/android/mms/util/LanguageControl;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v2, Lcom/android/mms/util/LanguageControl;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/mms/util/LanguageControl$DetectTask;

    iget-object v2, p0, Lcom/android/mms/util/LanguageControl;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/mms/util/LanguageControl$DetectTask;-><init>(Lcom/android/mms/util/LanguageControl;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/mms/util/LanguageControl$DetectTask;->start()V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/mms/util/LanguageControl;->TAG:Ljava/lang/String;

    const-string v3, "BadTokenException(activity is not running) - during show ProgressDialog for DETECT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/android/mms/util/LanguageControl;->TAG:Ljava/lang/String;

    const-string v3, "IllegalArgumentException - during show ProgressDialog for DETECT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFromLanguageKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/util/LanguageControl;->mFromLanguageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getToLanguageKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/util/LanguageControl;->mToLanguageKey:Ljava/lang/String;

    return-object v0
.end method

.method public setFromLanguageKey(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/android/mms/util/LanguageControl;->mFromLanguageKey:Ljava/lang/String;

    return-void
.end method

.method public setToLanguageKey(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/android/mms/util/LanguageControl;->mToLanguageKey:Ljava/lang/String;

    return-void
.end method
