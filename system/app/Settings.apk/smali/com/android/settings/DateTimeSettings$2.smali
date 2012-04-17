.class Lcom/android/settings/DateTimeSettings$2;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$2;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$2;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v4}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$2;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v4}, Lcom/android/settings/DateTimeSettings;->access$100(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$2;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v4}, Lcom/android/settings/DateTimeSettings;->access$200(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$2;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v4}, Lcom/android/settings/DateTimeSettings;->access$300(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$2;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v4}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$2;->this$0:Lcom/android/settings/DateTimeSettings;

    const v5, 0x7f0b087d

    invoke-virtual {v4, v5}, Lcom/android/settings/DateTimeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v4, "shutdownlogger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v2

    new-instance v3, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v3, v2}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    const-string v4, "DateTimeSettings.DIALOG_AUTO_TIME"

    invoke-virtual {v3, v4}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/DateTimeSettings$2$1;

    invoke-direct {v4, p0}, Lcom/android/settings/DateTimeSettings$2$1;-><init>(Lcom/android/settings/DateTimeSettings$2;)V

    const-wide/16 v5, 0x5dc

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
