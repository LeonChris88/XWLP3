.class public Lcom/android/mms/util/MessagingCscSetting;
.super Ljava/lang/Object;
.source "MessagingCscSetting.java"


# static fields
.field static final CSC_KEY_BOOL:[Ljava/lang/String;

.field static final CSC_KEY_INT:[Ljava/lang/String;

.field static final CSC_KEY_STR:[Ljava/lang/String;

.field static final PREF_KEY_BOOL:[Ljava/lang/String;

.field static final PREF_KEY_INT:[Ljava/lang/String;

.field static final PREF_KEY_STR:[Ljava/lang/String;

.field private static mAutoDelete:I

.field private static mCbActivation:I

.field private static mContext:Landroid/content/Context;

.field static mEditor:Landroid/content/SharedPreferences$Editor;

.field private static mEnableNotification:I

.field private static mEnablePushMesage:I

.field private static mMaxChCount:I

.field private static mMaxRecipient:I

.field private static mMmsAutoRetireve:I

.field private static mMmsAutoRetireveRoam:I

.field private static mMmsCreationMode:Ljava/lang/String;

.field private static mMmsDeleteLimit:I

.field private static mMmsDeliveryReport:I

.field private static mMmsReadReport:I

.field private static mMyChannels:I

.field private static mNotiVibrate:I

.field private static mPrefs:Landroid/content/SharedPreferences;

.field private static mServiceLoadingAction:Ljava/lang/String;

.field private static mSimState:Z

.field private static mSmsDeleteLimit:I

.field private static mSmsDeliveryReport:I

.field private static mSmsInputMethod:Ljava/lang/String;

.field private static mSmsReplyPath:I

.field private static mSmsToMmsThreshold:I

.field private static mSmsc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "csc_pref_key_sms_delivery_reports"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_mms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_mms_read_reports"

    aput-object v1, v0, v6

    const-string v1, "csc_pref_key_mms_auto_retrieval"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "csc_pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "csc_pref_key_auto_delete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csc_pref_key_vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "csc_pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "csc_pref_key_enable_push_message"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "csc_pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_key_sms_delivery_reports"

    aput-object v1, v0, v4

    const-string v1, "pref_key_mms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "pref_key_mms_read_reports"

    aput-object v1, v0, v6

    const-string v1, "pref_key_mms_auto_retrieval"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_key_auto_delete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_key_vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_key_enable_push_message"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "csc_pref_key_mms_creation_mode"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_sms_input_mode"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_service_loading_action"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "pref_key_mms_creation_mode"

    aput-object v1, v0, v4

    const-string v1, "pref_key_sms_input_mode"

    aput-object v1, v0, v5

    const-string v1, "pref_key_service_loading_action"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsReplyPath:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    sput v4, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    sput v4, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    sput-boolean v4, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static loadCscToDefaultSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "Mms/MessagingCscSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadCscToDefaultSettings] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "STRING"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "INT"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "BOOLEAN"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    :goto_2
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "csc_pref_key_threshold"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "csc_pref_key_threshold"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setSmsMmsThreshold(I)V

    :cond_6
    const-string v3, "csc_pref_key_max_recipient"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "csc_pref_key_max_recipient"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setSmsMmsMaxRecipient(I)V

    :cond_7
    const-string v3, "csc_pref_key_mms_delete_limit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "Mms/MessagingCscSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS delete limit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "csc_pref_key_mms_delete_limit"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    const-string v4, "csc_pref_key_mms_delete_limit"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/android/mms/util/Recycler$MmsRecycler;->setMessageLimit(Landroid/content/Context;I)V

    :cond_8
    const-string v3, "csc_pref_key_sms_delete_limit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Mms/MessagingCscSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS delete limit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "csc_pref_key_sms_delete_limit"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    const-string v4, "csc_pref_key_sms_delete_limit"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/android/mms/util/Recycler$SmsRecycler;->setMessageLimit(Landroid/content/Context;I)V

    :cond_9
    return-void
.end method

.method public static loadCscToDefaultSettings(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v1, 0x1

    return v1
.end method

.method public static loadDefaultSettings()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_sim_ready_status"

    sget-boolean v4, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_key_manage_smsc_address"

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_cb_my_channel_max_count"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_cb_my_channel_enabled_count"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    if-ltz v0, :cond_0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_sms_delivery_reports"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    if-lez v0, :cond_12

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    if-ltz v0, :cond_1

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_delivery_reports"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    if-lez v0, :cond_13

    move v0, v1

    :goto_1
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    if-ltz v0, :cond_2

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_read_reports"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    if-lez v0, :cond_14

    move v0, v1

    :goto_2
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    if-ltz v0, :cond_3

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_auto_retrieval"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    if-lez v0, :cond_15

    move v0, v1

    :goto_3
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_3
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    if-ltz v0, :cond_4

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_retrieval_during_roaming"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    if-lez v0, :cond_16

    move v0, v1

    :goto_4
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    if-ltz v0, :cond_5

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_auto_delete"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    if-lez v0, :cond_17

    move v0, v1

    :goto_5
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    if-ltz v0, :cond_6

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_vibrate"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    if-lez v0, :cond_18

    move v0, v1

    :goto_6
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_6
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    if-ltz v0, :cond_7

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_enable_notifications"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    if-lez v0, :cond_19

    move v0, v1

    :goto_7
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_7
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    if-ltz v0, :cond_8

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_cb_settings_activation"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    if-lez v0, :cond_1a

    move v0, v1

    :goto_8
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_8
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    if-ltz v0, :cond_9

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_threshold"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_9
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    if-ltz v0, :cond_a

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_max_recipient"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_a
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_mms_creation_mode"

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_b
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_sms_input_mode"

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_c
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    if-ltz v0, :cond_d

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_mms_delete_limit"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_d
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    if-ltz v0, :cond_e

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_sms_delete_limit"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_e
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    if-ltz v0, :cond_10

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_enable_push_message"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    if-lez v4, :cond_f

    move v2, v1

    :cond_f
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_10
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "csc_pref_key_service_loading_action"

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_11
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/MessagingCscSetting;->loadCscToDefaultSettings(Landroid/content/Context;)Z

    return v1

    :cond_12
    move v0, v2

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto/16 :goto_1

    :cond_14
    move v0, v2

    goto/16 :goto_2

    :cond_15
    move v0, v2

    goto/16 :goto_3

    :cond_16
    move v0, v2

    goto/16 :goto_4

    :cond_17
    move v0, v2

    goto/16 :goto_5

    :cond_18
    move v0, v2

    goto/16 :goto_6

    :cond_19
    move v0, v2

    goto/16 :goto_7

    :cond_1a
    move v0, v2

    goto/16 :goto_8
.end method

.method public static storeCscSettings()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_0
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    :cond_0
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delivery_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delivery_reports"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_1
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    :cond_1
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_read_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_read_reports"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_2
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    :cond_2
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_auto_retrieval"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_auto_retrieval"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_3
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    :cond_3
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_retrieval_during_roaming"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_retrieval_during_roaming"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_4
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    :cond_4
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_auto_delete"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_auto_delete"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_5
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    :cond_5
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_vibrate"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_vibrate"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_6
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    :cond_6
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_notifications"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_notifications"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_7
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    :cond_7
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_creation_mode"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_creation_mode"

    const-string v4, "free"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    :cond_8
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_input_mode"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_input_mode"

    const-string v4, "Automatic"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    :cond_9
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_threshold"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_threshold"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    :cond_a
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_max_recipient"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_max_recipient"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    :cond_b
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delete_limit"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delete_limit"

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    :cond_c
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delete_limit"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delete_limit"

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v4

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    :cond_d
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_push_message"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_push_message"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_8
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    :cond_e
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_service_loading_action"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_service_loading_action"

    const-string v4, "pref_key_service_loading_action"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    :cond_f
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_cb_settings_activation"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_cb_settings_activation"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    move v2, v1

    :cond_10
    sput v2, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    :cond_11
    return v1

    :cond_12
    move v0, v2

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto/16 :goto_1

    :cond_14
    move v0, v2

    goto/16 :goto_2

    :cond_15
    move v0, v2

    goto/16 :goto_3

    :cond_16
    move v0, v2

    goto/16 :goto_4

    :cond_17
    move v0, v2

    goto/16 :goto_5

    :cond_18
    move v0, v2

    goto/16 :goto_6

    :cond_19
    move v0, v2

    goto/16 :goto_7

    :cond_1a
    move v0, v2

    goto :goto_8
.end method

.method public static storeCurrentSettings()Z
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_manage_smsc_address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_sim_ready_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_cb_my_channel_max_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_cb_my_channel_enabled_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    const/4 v0, 0x1

    return v0
.end method
