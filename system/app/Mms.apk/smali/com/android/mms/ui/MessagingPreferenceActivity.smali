.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static BUBBLE_DATE_SIZE_HUGE:F

.field public static BUBBLE_DATE_SIZE_LARGE:F

.field public static BUBBLE_DATE_SIZE_NORMAL:F

.field public static BUBBLE_DATE_SIZE_SMALL:F

.field public static BUBBLE_DATE_SIZE_TINY:F

.field private static final SMSC_URI:Landroid/net/Uri;


# instance fields
.field private mCBListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mFontSizeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

.field private mReqReceiver:Landroid/content/BroadcastReceiver;

.field private mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mServiceLoadingActionName:[Ljava/lang/String;

.field private mServiceLoadingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, 0x4180

    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_HUGE:F

    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_LARGE:F

    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_NORMAL:F

    const v0, 0x415547ae

    sput v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_SMALL:F

    const/high16 v0, 0x4140

    sput v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_TINY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$7;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$8;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$9;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private InitPreference(Landroid/content/SharedPreferences;)V
    .locals 9

    const-string v7, "pref_key_font_size_q1"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/FontSizePreference;

    const-string v7, "pref_key_font_size"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/FontSizePreference;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v7, "pref_key_font_size"

    const-string v8, "Normal"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndexByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/mms/ui/FontSizePreference;->setSummaryByIndex(I)V

    :cond_0
    const-string v7, "pref_key_text_field_color"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/TextFieldColorPreference;

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    const-string v7, "pref_key_text_field_color"

    const-string v8, "Black"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/TextFieldColorPreference;->setSummaryByIndex(I)V

    :cond_1
    const-string v7, "pref_key_service_loading_action"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v7, "pref_key_service_loading_action"

    const-string v8, "Prompt"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v7, "GT-I9100"

    const-string v8, "GT-I9100"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "GT-I9100P"

    const-string v8, "GT-I9100"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "JANICE"

    const-string v8, "GT-I9100"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clearPickerDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    :cond_0
    return-void
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090110

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090111

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static convertCreationMode(Ljava/lang/String;)I
    .locals 2

    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS creation mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createCBListener(Landroid/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public static getBubbleFontSize(Landroid/content/Context;)F
    .locals 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_font_size"

    const-string v2, "Normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "Normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x419547ae

    :goto_0
    const-string v2, "Mms/MessagingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fontSizePref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", getBubbleFontSize() returns "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v0, "Small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x4180

    goto :goto_0

    :cond_1
    const/high16 v0, 0x4160

    goto :goto_0
.end method

.method public static getExpiryTime(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_sms_expiry"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "1 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa7

    goto :goto_0

    :cond_1
    const-string v2, "2 days"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xa8

    goto :goto_0

    :cond_2
    const/16 v2, 0xa9

    goto :goto_0
.end method

.method public static getFontSizePreferenceDialogFontSize(I)F
    .locals 4

    packed-switch p0, :pswitch_data_0

    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    :goto_0
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFontSizePreferenceDialogFontSize() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_0
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInputmode(Landroid/content/Context;)I
    .locals 5

    const/4 v2, 0x2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "pref_key_sms_input_mode"

    const-string v4, "Automatic"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getInputModeAuto()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "GSM alphabet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "Unicode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "Automatic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public static getMessageFontSizeIndex(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_font_size"

    const-string v3, "Normal"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndexByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getMessageFontSizeIndexByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Follow system font size"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessageFontSizeIndexByNameByName() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "Huge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Large"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "Normal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v1, "Small"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getSelectedFontSizeIndexByPref(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_font_size"

    const-string v3, "Normal"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndexByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getServiceLoading(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_service_loading_action"

    const-string v3, "Prompt"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getServiceLoading(Ljava/lang/String;)I
    .locals 3

    const-string v0, "Mms/MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushMsg   getServiceLoading  slAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Always"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "Prompt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static getTextFieldColor(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_key_text_field_color"

    const-string v3, "Black"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getTextFieldColor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "White"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 4

    new-instance v0, Lcom/android/mms/util/MessagingCscSetting;

    invoke-direct {v0, p0}, Lcom/android/mms/util/MessagingCscSetting;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->storeCurrentSettings()Z

    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->storeCscSettings()Z

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->loadDefaultSettings()Z

    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSettingsInfo(Landroid/content/SharedPreferences;Landroid/telephony/SmsManager;)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initSmsSettings(Landroid/telephony/SmsManager;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initMmsSettings()V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initOthersSettings(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->InitPreference(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private setCallbackNumber(Ljava/lang/String;)V
    .locals 3

    const-string v2, "pref_key_callback_text"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f09007c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    const-string v1, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f09007c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showMmsLimitNumberPickerDlg()V
    .locals 8

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090083

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    return-void
.end method

.method private showSmsLimitNumberPickerDlg()V
    .locals 8

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090082

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    return-void
.end method

.method private updateSettingsInfo(Landroid/content/SharedPreferences;Landroid/telephony/SmsManager;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "pref_key_manage_smsc_address"

    const-string v6, ""

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09011c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    const-string v6, "pref_key_manage_smsc_address"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_3

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "HTS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v7, :cond_1

    const-string v5, "H3G"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v7, :cond_1

    const-string v5, "3IE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v7, :cond_1

    const-string v5, "HUI"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_2

    :cond_1
    const-string v5, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string v5, "LanguageCount"

    const/16 v6, 0x9

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "pref_key_cb_language"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v2, v7, :cond_5

    const v5, 0x7f09008c

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const v5, 0x7f09008d

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static useSplitView(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_split_view"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected initMmsSettings()V
    .locals 3

    const-string v1, "pref_key_mms_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "GT-I9100"

    const-string v2, "SPH-D710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GT-I9100"

    const-string v2, "SPH-D705"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GT-I9100"

    const-string v2, "SCH-R760"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GT-I9100"

    const-string v2, "ISW11SC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    const-string v1, "GT-I9100"

    const-string v2, "SPH-D710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GT-I9100"

    const-string v2, "SPH-D705"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GT-I9100"

    const-string v2, "SCH-R760"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GT-I9100"

    const-string v2, "ISW11SC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_mms_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v1, "pref_key_storage_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v2, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    :cond_4
    return-void
.end method

.method protected initOthersSettings(Landroid/content/SharedPreferences;)V
    .locals 5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "pref_key_cb_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getWapPush()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "pref_key_push_message_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCallbackOption()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "pref_callback_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSignatureSettings()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "pref_signature_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_3
    const-string v3, "pref_notification_settings"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v3, "pref_key_vibrateWhen"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v3, "pref_key_backlight"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v3, "ATL"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const-string v3, "pref_key_mms_settings"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    const-string v3, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    return-void

    :cond_5
    const-string v3, "pref_key_callback_text"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->createCBListener(Landroid/preference/Preference;)V

    const-string v3, "pref_key_callback_text"

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initSmsSettings(Landroid/telephony/SmsManager;)V
    .locals 4

    const/4 v3, 0x1

    const-string v2, "pref_key_sms_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsExpiredDate()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pref_key_sms_expiry"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_2
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "HTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_3

    const-string v2, "H3G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_3

    const-string v2, "3IE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_3

    const-string v2, "HUI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_4

    :cond_3
    const-string v2, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInputModeAuto()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "pref_key_sms_input_mode"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_5
    const-string v2, "GT-I9100"

    const-string v3, "SPH-D710"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "GT-I9100"

    const-string v3, "SPH-D705"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "GT-I9100"

    const-string v3, "SCH-R760"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "GT-I9100"

    const-string v3, "ISW11SC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getNetWorkLock()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_7
    const-string v2, "GT-I9100"

    const-string v3, "SPH-D710"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "GT-I9100"

    const-string v3, "SPH-D705"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "GT-I9100"

    const-string v3, "ISW11SC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NumberPickerDialog;->hideSip(Landroid/view/inputmethod/InputMethodManager;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initSmsSettings(Landroid/telephony/SmsManager;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initMmsSettings()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initOthersSettings(Landroid/content/SharedPreferences;)V

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReqReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.GET_SMSC"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f090071

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x1

    const-string v1, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmsLimitNumberPickerDlg()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmsLimitNumberPickerDlg()V

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_2
    return v0

    :cond_2
    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showMmsLimitNumberPickerDlg()V

    goto :goto_0

    :cond_3
    const-string v1, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "pref_key_mms_clear_history"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    goto :goto_2

    :cond_5
    const-string v1, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_6

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmsLimitNumberPickerDlg()V

    goto :goto_1

    :cond_6
    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_7

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showMmsLimitNumberPickerDlg()V

    goto :goto_1

    :cond_7
    const-string v1, "pref_key_mms_clear_history"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessagingPreferenceActivity.onResume : android.util.GateConfig.isGateEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSettingsInfo(Landroid/content/SharedPreferences;Landroid/telephony/SmsManager;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->InitPreference(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v1, "Mms/MessagingPreferenceActivity"

    const-string v2, "[SMS] onSharedPreferenceChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_key_cb_settings_activation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pref_key_mms_delivery_reports"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_OFF</GATE-M>"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_ON</GATE-M>"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    return-void
.end method

.method public refreshPreferences(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NotSet"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pref_key_manage_smsc_address"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "pref_key_manage_smsc_address"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "pref_key_manage_smsc_address"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const-string v0, "Mms/MessagingPreferenceActivity"

    const-string v1, "smscPrefs is Null "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
