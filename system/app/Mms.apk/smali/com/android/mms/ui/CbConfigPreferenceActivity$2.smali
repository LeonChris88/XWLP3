.class Lcom/android/mms/ui/CbConfigPreferenceActivity$2;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyChannelSet(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$600(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$500()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-virtual {v0, v7, v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->setPreferenceAttr(Landroid/preference/CheckBoxPreference;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v0, v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$700(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
