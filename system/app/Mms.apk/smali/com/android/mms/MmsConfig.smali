.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field public static SMS_DB_COUNT:I

.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static mAllowAttachAudio:Z

.field private static mAllowSplitBarMove:Z

.field private static mCallbackOption:Z

.field private static mComposeMaxLengthLimit:I

.field private static mDefaultMMSMessagesPerThread:I

.field private static mDefaultSMSMessagesPerThread:I

.field private static mDisableEndterKey:I

.field private static mDisableSmsSettingNetworkLock:I

.field private static mEmailGateway:Ljava/lang/String;

.field private static mEnableAuthMdn:Z

.field private static mEnableEmailAndSegmentedSms:Z

.field private static mEnablePrefixFwd:Z

.field private static mEnableSaveEmptyRecipient:Z

.field private static mEnableSignature:Z

.field private static mHttpParams:Ljava/lang/String;

.field private static mHttpParamsLine1Key:Ljava/lang/String;

.field private static mHttpSocketTimeout:I

.field private static mInputModeAuto:I

.field private static mInternational_SMS_Guard:I

.field private static mMaxImageHeight:I

.field private static mMaxImageHeight_HighResolution:I

.field private static mMaxImageWidth:I

.field private static mMaxImageWidth_HighResolution:I

.field private static mMaxMessageCountPerThread:I

.field private static mMaxMessageSize:I

.field private static mMaxMessageSize_mir:I

.field private static mMaxMessageSize_tel:I

.field private static mMaxSizeScaleForPendingMmsAllowed:I

.field private static mMaxTextViewSize:I

.field private static mMinMessageCountPerThread:I

.field private static mMinimumSlideElementDuration:I

.field private static mMmsEnabled:I

.field private static mMmsHeaderSize:I

.field private static mNotifyWapMMSC:Z

.field private static mNotifyWapMMSC_Telefonica:Z

.field private static mOptionalFieldAttendance:Z

.field private static mRecipientLimit:I

.field private static mSavePdu:Z

.field private static mScreenOnOffOption:Z

.field private static mSendAnimationJpn:I

.field private static mSignatureSettings:Z

.field private static mSmsExpiredDate:I

.field private static mSmsToMmsTextThreshold:I

.field private static mSubjectSMS:I

.field private static mSupportEmoji:I

.field private static mSupportHD:Z

.field private static mTransIdEnabled:Z

.field private static mTransactionLoggable:Z

.field private static mUSAATTUaProfUrl:Ljava/lang/String;

.field private static mUSAATTUserAgent:Ljava/lang/String;

.field private static mUSATMOUaProfUrl:Ljava/lang/String;

.field private static mUSATMOUserAgent:Ljava/lang/String;

.field private static mUaDebugSet:Z

.field private static mUaProfTagName:Ljava/lang/String;

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUaProfUrlDebug:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field private static mUserAgentDebug:Ljava/lang/String;

.field private static mVibrationOption:Z

.field private static mWapPush:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x1388

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sput v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    sput v3, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    const v0, 0x4b000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    const v0, 0x96000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    const v0, 0xfa000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize_mir:I

    const/16 v0, 0x1400

    sput v0, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUSAATTUserAgent:Ljava/lang/String;

    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUSATMOUserAgent:Ljava/lang/String;

    const-string v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    sput-object v1, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sput-object v1, Lcom/android/mms/MmsConfig;->mUSAATTUaProfUrl:Ljava/lang/String;

    sput-object v1, Lcom/android/mms/MmsConfig;->mUSATMOUaProfUrl:Ljava/lang/String;

    sput-object v1, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    sput-object v1, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    const/16 v0, 0x4b0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight_HighResolution:I

    const/16 v0, 0x640

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth_HighResolution:I

    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    const/16 v0, 0xc8

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    sput v4, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    sput v5, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    const/4 v0, 0x4

    sput v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    const/4 v0, 0x5

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC_Telefonica:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    sput-object v1, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    sput-object v1, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    const/16 v0, 0xa

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    sput v4, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    sput v2, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    sput v2, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    sput v2, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    sput v2, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    sput v2, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    sput v3, Lcom/android/mms/MmsConfig;->mWapPush:I

    sput v2, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    sput v2, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    sput v3, Lcom/android/mms/MmsConfig;->mSubjectSMS:I

    sput v3, Lcom/android/mms/MmsConfig;->mInternational_SMS_Guard:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mAllowSplitBarMove:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSupportHD:Z

    sput v5, Lcom/android/mms/MmsConfig;->mMaxTextViewSize:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnablePrefixFwd:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableAuthMdn:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableSaveEmptyRecipient:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableEmailAndSegmentedSms:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableSignature:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mScreenOnOffOption:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSignatureSettings:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mVibrationOption:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mCallbackOption:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method public static getAliasMaxChars()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static getCallbackOption()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mCallbackOption:Z

    return v0
.end method

.method public static getComposeMaxLengthLimit()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getDisableEndterKey()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static final getEnableAuthMdn()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableAuthMdn:Z

    return v0
.end method

.method public static final getEnableEmailAndSegmentedSms()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableEmailAndSegmentedSms:Z

    return v0
.end method

.method public static final getEnablePrefixFwd()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnablePrefixFwd:Z

    return v0
.end method

.method public static final getEnableSaveEmptyRecipient()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSaveEmptyRecipient:Z

    return v0
.end method

.method public static final getEnableSignature()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSignature:Z

    return v0
.end method

.method public static getEnableSmsToMmsThreshold()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    return v0
.end method

.method public static getInputModeAuto()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInternational_SMS_Guard()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mInternational_SMS_Guard:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxContentsSize()I
    .locals 4

    const/4 v3, 0x1

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "TNZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    sget v2, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_1
    const-string v1, "MIR"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize_mir:I

    sget v2, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    sget v2, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getMaxImageHeight()I
    .locals 3

    const/4 v2, 0x1

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "SFR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "MIR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TNZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "NEE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TLA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "COV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "HTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "VDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "NCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "ODK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TSF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "ELS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "DNF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDTFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isORGFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageHeight_HighResolution:I

    :goto_0
    return v1

    :cond_1
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto :goto_0
.end method

.method public static getMaxImageWidth()I
    .locals 3

    const/4 v2, 0x1

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "SFR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "MIR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TNZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "NEE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TLA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "COV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "HTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "VDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "NCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "ODK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TSF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "ELS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "DNF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDTFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isORGFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageWidth_HighResolution:I

    :goto_0
    return v1

    :cond_1
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto :goto_0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 4

    const/4 v3, 0x1

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "TNZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    :goto_0
    return v1

    :cond_1
    const-string v1, "MIR"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize_mir:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto :goto_0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static final getMaxTextViewSize()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mMaxTextViewSize:I

    return v0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNetWorkLock()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 2

    const-string v0, "XEC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC_Telefonica:Z

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    goto :goto_0
.end method

.method public static getOptionalFieldAttendance()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    return v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    return v0
.end method

.method public static getSavePduFiles()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    return v0
.end method

.method public static getScreenOnOffOption()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mScreenOnOffOption:Z

    return v0
.end method

.method public static getSendAnimationJpn()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSignatureSettings()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSignatureSettings:Z

    return v0
.end method

.method public static getSmsExpiredDate()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmsToMmsTextThreshold()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    return v0
.end method

.method public static getSubjectSMS()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mSubjectSMS:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSupportEmoji()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    return v0
.end method

.method public static getTransactionLoggable()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVibrationOption()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mVibrationOption:Z

    return v0
.end method

.method public static getWapPush()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->mWapPush:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    const-string v1, "Mms/MmsConfig"

    const-string v2, "MmsConfig.init()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.debugsettingready"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static isAliasEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    return v0
.end method

.method public static isDTFeature()Z
    .locals 2

    const-string v0, "DTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DTR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TNL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMZ"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAX"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TRG"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CRO"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MBM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TPL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMT"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMH"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMIRSales()Z
    .locals 2

    const-string v0, "MIR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isORGFeature()Z
    .locals 2

    const-string v0, "AMN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IDE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORO"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ONE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORA"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f050002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    const-string v17, "Mms/MmsConfig"

    const-string v18, "[loadMmsSettings] "

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v17, "mms_config"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v10}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    if-nez v13, :cond_2

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_1
    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    if-nez v17, :cond_1

    const-string v7, "uaProfUrl"

    :cond_1
    if-eqz v7, :cond_4a

    const-string v17, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v17, "Mms/MmsConfig"

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Lcom/android/mms/ContentRestrictionException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_2
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v14

    :cond_3
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "Mms/MmsConfig"

    const-string v18, "tag: "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, " value: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "bool"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27

    const-string v17, "enabledMMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    :goto_2
    sput v17, Lcom/android/mms/MmsConfig;->mMmsEnabled:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v17, "Mms/MmsConfig"

    const-string v18, "loadMmsSettings caught "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    :cond_5
    :try_start_3
    const-string v17, "enabledTransID"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v5

    :try_start_4
    const-string v17, "Mms/MmsConfig"

    const-string v18, "loadMmsSettings caught "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    :cond_6
    :try_start_5
    const-string v17, "enabledNotifyWapMMSC"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v5

    :try_start_6
    const-string v17, "Mms/MmsConfig"

    const-string v18, "loadMmsSettings caught "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    :cond_7
    :try_start_7
    const-string v17, "aliasEnabled"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    throw v17

    :cond_8
    :try_start_8
    const-string v17, "allowAttachAudio"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    goto/16 :goto_0

    :cond_9
    const-string v17, "disableEndterKey"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    :goto_3
    sput v17, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0x0

    goto :goto_3

    :cond_b
    const-string v17, "composeMaxLengthLimit"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    :goto_4
    sput v17, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x0

    goto :goto_4

    :cond_d
    const-string v17, "inputModeAuto"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x1

    :goto_5
    sput v17, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    goto/16 :goto_0

    :cond_e
    const/16 v17, 0x0

    goto :goto_5

    :cond_f
    const-string v17, "smsExpiryDate"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    :goto_6
    sput v17, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    goto/16 :goto_0

    :cond_10
    const/16 v17, 0x0

    goto :goto_6

    :cond_11
    const-string v17, "sendAnimationJpn"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/16 v17, 0x1

    :goto_7
    sput v17, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    goto/16 :goto_0

    :cond_12
    const/16 v17, 0x0

    goto :goto_7

    :cond_13
    const-string v17, "wapPush"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x1

    :goto_8
    sput v17, Lcom/android/mms/MmsConfig;->mWapPush:I

    goto/16 :goto_0

    :cond_14
    const/16 v17, 0x0

    goto :goto_8

    :cond_15
    const-string v17, "disable_sms_setting_networklock"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/16 v17, 0x1

    :goto_9
    sput v17, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    goto/16 :goto_0

    :cond_16
    const/16 v17, 0x0

    goto :goto_9

    :cond_17
    const-string v17, "supportEmoji"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    const/16 v17, 0x1

    :goto_a
    sput v17, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    goto/16 :goto_0

    :cond_18
    const/16 v17, 0x0

    goto :goto_a

    :cond_19
    const-string v17, "supportHD"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mSupportHD:Z

    goto/16 :goto_0

    :cond_1a
    const-string v17, "enable_prefix_fwd"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1b

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mEnablePrefixFwd:Z

    goto/16 :goto_0

    :cond_1b
    const-string v17, "enable_auth_mdn"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mEnableAuthMdn:Z

    goto/16 :goto_0

    :cond_1c
    const-string v17, "enable_save_empty_recipient"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mEnableSaveEmptyRecipient:Z

    goto/16 :goto_0

    :cond_1d
    const-string v17, "enable_screen_onoff_option"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mScreenOnOffOption:Z

    goto/16 :goto_0

    :cond_1e
    const-string v17, "enable_signature_settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mSignatureSettings:Z

    goto/16 :goto_0

    :cond_1f
    const-string v17, "enable_vibration_option"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mVibrationOption:Z

    goto/16 :goto_0

    :cond_20
    const-string v17, "enable_email_segmented_sms"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mEnableEmailAndSegmentedSms:Z

    goto/16 :goto_0

    :cond_21
    const-string v17, "enable_signature"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mEnableSignature:Z

    goto/16 :goto_0

    :cond_22
    const-string v17, "enable_callback_option"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_23

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mCallbackOption:Z

    goto/16 :goto_0

    :cond_23
    const-string v17, "SubjectSMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_25

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_24

    const/16 v17, 0x1

    :goto_b
    sput v17, Lcom/android/mms/MmsConfig;->mSubjectSMS:I

    goto/16 :goto_0

    :cond_24
    const/16 v17, 0x0

    goto :goto_b

    :cond_25
    const-string v17, "International_SMS_Guard"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_26

    const/16 v17, 0x1

    :goto_c
    sput v17, Lcom/android/mms/MmsConfig;->mInternational_SMS_Guard:I

    goto/16 :goto_0

    :cond_26
    const/16 v17, 0x0

    goto :goto_c

    :cond_27
    const-string v17, "int"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3c

    const-string v17, "maxMessageSize"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2a

    const-string v17, "XEC"

    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_28

    const-string v17, "TEL"

    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_28

    const-string v17, "TNZ"

    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_29

    :cond_28
    sget v17, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    sput v17, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    :cond_29
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    :cond_2a
    const-string v17, "ATTmaxMessageSize"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2b

    :cond_2b
    const-string v17, "TMOmaxMessageSize"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2c

    :cond_2c
    const-string v17, "mmsHeaderSize"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2d

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    goto/16 :goto_0

    :cond_2d
    const-string v17, "maxImageHeight"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2e

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto/16 :goto_0

    :cond_2e
    const-string v17, "maxImageWidth"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2f

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto/16 :goto_0

    :cond_2f
    const-string v17, "defaultSMSMessagesPerThread"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_30

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    goto/16 :goto_0

    :cond_30
    const-string v17, "defaultMMSMessagesPerThread"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_31

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    goto/16 :goto_0

    :cond_31
    const-string v17, "minMessageCountPerThread"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_32

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    goto/16 :goto_0

    :cond_32
    const-string v17, "maxMessageCountPerThread"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_33

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    goto/16 :goto_0

    :cond_33
    const-string v17, "smsToMmsTextThreshold"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_34

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v17, "csc_pref_key_threshold"

    move-object/from16 v0, v17

    invoke-interface {v12, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    const-string v17, "Mms/MmsConfig"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[loadMmsSettings] mSmsToMmsTextThreshold= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    const-string v17, "recipientLimit"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_36

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v17, "csc_pref_key_max_recipient"

    move-object/from16 v0, v17

    invoke-interface {v12, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    sget v17, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    if-gez v17, :cond_35

    const v17, 0x7fffffff

    sput v17, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "MmsRecipientLimit"

    sget v19, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v17, "Mms/MmsConfig"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[loadMmsSettings] mRecipientLimit= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_36
    const-string v17, "httpSocketTimeout"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_37

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    goto/16 :goto_0

    :cond_37
    const-string v17, "minimumSlideElementDuration"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_38

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    goto/16 :goto_0

    :cond_38
    const-string v17, "maxSizeScaleForPendingMmsAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_39

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_0

    :cond_39
    const-string v17, "aliasMinChars"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3a

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    goto/16 :goto_0

    :cond_3a
    const-string v17, "aliasMaxChars"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3b

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    goto/16 :goto_0

    :cond_3b
    const-string v17, "mMaxTextViewSize"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxTextViewSize:I

    goto/16 :goto_0

    :cond_3c
    const-string v17, "string"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "userAgent"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3e

    const-string v2, "SAMSUNG-"

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v17, "REL"

    sget-object v18, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3d

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3d

    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v17, "-Mms/2.0"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3d
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sget-object v17, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sput-object v17, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3e
    const-string v17, "USAATTUserAgent"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3f

    :cond_3f
    const-string v17, "USATMOUserAgent"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_40

    :cond_40
    const-string v17, "uaProfTagName"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_41

    sput-object v14, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_41
    const-string v17, "uaProfUrl"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_45

    const-string v2, "http://wap.samsungmobile.com/uaprof/"

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v17, "REL"

    sget-object v18, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_43

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_43

    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDTFeature()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_44

    const-string v17, "BO"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_42
    :goto_d
    const-string v17, ".xml"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_43
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sget-object v17, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sput-object v17, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    goto/16 :goto_0

    :cond_44
    invoke-static {}, Lcom/android/mms/MmsConfig;->isMIRSales()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_42

    const-string v17, "HZ"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_45
    const-string v17, "USAATTuaProfUrl"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_46

    :cond_46
    const-string v17, "USATMOuaProfUrl"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_47

    :cond_47
    const-string v17, "httpParams"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_48

    sput-object v14, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    goto/16 :goto_0

    :cond_48
    const-string v17, "httpParamsLine1Key"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_49

    sput-object v14, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    goto/16 :goto_0

    :cond_49
    const-string v17, "emailGatewayNumber"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    sput-object v14, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :cond_4a
    return-void
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public static setOptionalFieldAttendance(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    return-void
.end method

.method public static setSavePduFiles(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    return-void
.end method

.method public static setSmsMmsMaxRecipient(I)V
    .locals 3

    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSmsMmsMaxRecipient] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    return-void
.end method

.method public static setSmsMmsThreshold(I)V
    .locals 3

    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSmsMmsThreshold] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    return-void
.end method

.method public static setTransactionLoggable(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    return-void
.end method

.method public static setUaOrigin()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    return-void
.end method

.method public static setUaProfUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    sput-object p0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    sput-object p0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    return-void
.end method
