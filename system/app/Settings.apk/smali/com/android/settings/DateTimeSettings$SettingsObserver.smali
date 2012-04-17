.class Lcom/android/settings/DateTimeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "auto_time_zone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v5}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v5}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    const-string v6, "auto_time"

    invoke-static {v5, v6}, Lcom/android/settings/DateTimeSettings;->access$000(Lcom/android/settings/DateTimeSettings;Ljava/lang/String;)Z

    move-result v0

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    const-string v6, "auto_time_zone"

    invoke-static {v5, v6}, Lcom/android/settings/DateTimeSettings;->access$000(Lcom/android/settings/DateTimeSettings;Ljava/lang/String;)Z

    move-result v1

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v5}, Lcom/android/settings/DateTimeSettings;->access$100(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v5}, Lcom/android/settings/DateTimeSettings;->access$200(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v0, :cond_2

    move v5, v3

    :goto_1
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v5}, Lcom/android/settings/DateTimeSettings;->access$300(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v0, :cond_3

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v5}, Lcom/android/settings/DateTimeSettings;->access$400(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v5}, Lcom/android/settings/DateTimeSettings;->access$500(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v5

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3
.end method
