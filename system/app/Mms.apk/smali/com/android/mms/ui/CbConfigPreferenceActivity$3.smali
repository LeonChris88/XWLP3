.class Lcom/android/mms/ui/CbConfigPreferenceActivity$3;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v7}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$800(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "pref_cb_my_channel_max_count"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3e8

    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;)I

    move-result v2

    if-lt v2, v1, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v7}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v7}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v7}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isShown()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v8, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v9, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    const v10, 0x7f09008e

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-virtual {v9, v10, v11}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$902(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_2
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    return v5

    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "is_checked"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    move v5, v6

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$600(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channel_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v5, v6

    goto :goto_0
.end method
