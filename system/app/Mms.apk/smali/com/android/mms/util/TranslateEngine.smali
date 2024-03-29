.class public Lcom/android/mms/util/TranslateEngine;
.super Ljava/lang/Object;
.source "TranslateEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/TranslateEngine$TranslateTask;
    }
.end annotation


# static fields
.field private static mProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field final handler:Landroid/os/Handler;

.field mClient:Lorg/apache/http/client/HttpClient;

.field mContext:Landroid/content/Context;

.field mGetRequest:Lorg/apache/http/client/methods/HttpGet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mms/util/TranslateEngine$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/TranslateEngine$1;-><init>(Lcom/android/mms/util/TranslateEngine;)V

    iput-object v0, p0, Lcom/android/mms/util/TranslateEngine;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/util/TranslateEngine;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/android/mms/util/TranslateEngine;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    :try_start_0
    sget-object v1, Lcom/android/mms/util/TranslateEngine;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/util/TranslateEngine;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/util/TranslateEngine;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/android/mms/util/TranslateEngine;->mContext:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/mms/util/TranslateEngine;->mContext:Landroid/content/Context;

    const v4, 0x7f0901c9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/TranslateEngine;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/mms/util/TranslateEngine;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/mms/util/TranslateEngine$TranslateTask;

    iget-object v2, p0, Lcom/android/mms/util/TranslateEngine;->handler:Landroid/os/Handler;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/TranslateEngine$TranslateTask;-><init>(Lcom/android/mms/util/TranslateEngine;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mms/util/TranslateEngine$TranslateTask;->start()V

    return-void

    :catch_0
    move-exception v6

    const-string v1, "Mms/TranslateEngine"

    const-string v2, "BadTokenException(activity is not running) - during show ProgressDialog for DETECT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v1, "Mms/TranslateEngine"

    const-string v2, "IllegalArgumentException - during show ProgressDialog for DETECT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
