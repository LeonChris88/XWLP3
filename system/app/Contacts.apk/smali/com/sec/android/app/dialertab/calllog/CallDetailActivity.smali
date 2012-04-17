.class public Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field public static mCallDetailIsRunning:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private bConfigurationChanged:Z

.field ids:[J

.field public keyPressed:Z

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private mCanPlaceCallsTo:Z

.field private mCnapName:Ljava/lang/String;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mHasEditNumberBeforeCall:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsVoicemailNumber:Z

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field mResources:Landroid/content/res/Resources;

.field private mResumeOnPortrait:Z

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field mServiceType:I

.field private final mTertiaryActionListener:Landroid/view/View$OnClickListener;

.field private final mVideoLetterActionListener:Landroid/view/View$OnClickListener;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private nameText:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailIsRunning:Z

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "duration"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cdnip_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "service_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCanPlaceCallsTo:Z

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsVoicemailNumber:Z

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVideoLetterActionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/net/Uri;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureActionBar(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCanPlaceCallsTo:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCanPlaceCallsTo:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsVoicemailNumber:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsVoicemailNumber:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private configureActionBar(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V
    .locals 9

    const-string v6, "CallDetail"

    const-string v7, "configureActionBar"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v7, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v8, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v6, 0xc

    const/16 v7, 0xe

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x1

    if-le p2, v6, :cond_0

    const/16 v6, 0x28

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_4

    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a02b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a007d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v7, "-1"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a007e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    if-nez v6, :cond_7

    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget v7, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    invoke-static {v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;)V
    .locals 9

    const/16 v8, 0x8

    const v6, 0x7f0d0032

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_1

    const v6, 0x7f0d0031

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const v6, 0x7f0d0030

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v6, 0x7f0d0033

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v6, 0x7f0d0035

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v6, 0x7f0d0034

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v6, 0x7f0d0039

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v6, 0x7f0d0038

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    const-string v1, "CallDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallLogEntryUris, uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_CALL_LOG_CONTACT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    aput-object v3, v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->ids:[J

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->ids:[J

    array-length v1, v1

    new-array v1, v1, [Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uris:[Landroid/net/Uri;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->ids:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uris:[Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->ids:[J

    aget-wide v3, v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uris:[Landroid/net/Uri;

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 38

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    if-eqz v24, :cond_0

    :try_start_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/4 v4, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v4, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/4 v4, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v4, "cdnip_number"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    const-string v4, "service_type"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    const-string v4, "cnap_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mServiceType:I

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    :cond_3
    const-string v16, ""

    const/16 v17, 0x0

    const-string v18, ""

    const/16 v20, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_0
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, 0x1

    new-array v10, v5, [I

    const/4 v5, 0x0

    aput v25, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mServiceType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v22, v0

    move/from16 v5, v27

    move-object/from16 v6, v32

    invoke-direct/range {v4 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v24, :cond_4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v4

    :cond_5
    const/4 v3, 0x0

    :try_start_2
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    move-object/from16 v26, v32

    const-string v4, "persist.sys.country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v37

    if-eqz v35, :cond_b

    :try_start_3
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x6

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    if-nez v36, :cond_9

    const/16 v20, 0x0

    :goto_1
    const-string v4, "TNZ"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "VNZ"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "VNX"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "NZC"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ATO"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "INU"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "INS"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SLK"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "NPL"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "TML"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ETR "

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "PH"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "NO"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SE"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_6
    const/4 v4, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    :goto_2
    const/4 v4, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v4, 0x3

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    const-wide/16 v4, 0x0

    cmp-long v4, v33, v4

    if-lez v4, :cond_7

    const/4 v4, 0x7

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v33

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v19

    :cond_7
    :goto_3
    if-eqz v35, :cond_8

    :try_start_4
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    move-object/from16 v7, v26

    goto/16 :goto_0

    :cond_9
    :try_start_5
    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto :goto_2

    :cond_b
    const-string v4, "TNZ"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "VNZ"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "VNX"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "NZC"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ATO"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "INU"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "INS"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "SLK"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "NPL"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "TML"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ETR "

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "PH"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "NO"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "SE"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move-object/from16 v26, v32

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, v32

    invoke-static {v0, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v26

    goto/16 :goto_3

    :catchall_1
    move-exception v4

    if-eqz v35, :cond_e

    :try_start_6
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    :cond_e
    move-object/from16 v7, v26

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private getVoicemailNumber()Ljava/lang/String;
    .locals 2

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadContactPhotos(Landroid/net/Uri;J)V
    .locals 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    move-object v2, p1

    move v4, v3

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZJ)V

    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    return-void
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "CallDetail"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setContentView(I)V

    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setContentView(I)V

    sput-object p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    new-instance v0, Lcom/android/contacts/ProximitySensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "CallDetail"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->onHomeSelected()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    if-nez v2, :cond_0

    const-string v2, "EXTRA_CALL_LOG_IDS"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->ids:[J

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0240 -> :sswitch_1
        0x7f0d0241 -> :sswitch_2
        0x7f0d0242 -> :sswitch_3
        0x7f0d0243 -> :sswitch_3
        0x7f0d0244 -> :sswitch_4
        0x7f0d0245 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CallDetail"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailIsRunning:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->disableProximitySensor(Z)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11

    const v5, 0x7f0d0243

    const v4, 0x7f0d0242

    const v1, 0x7f0d0240

    const/4 v10, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsVoicemailNumber:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCanPlaceCallsTo:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const v0, 0x7f0d0241

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    const v0, 0x7f0d0244

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0245

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCanPlaceCallsTo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsVoicemailNumber:Z

    if-nez v0, :cond_0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "reject_number="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " AND reject_match="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v3

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0d0244

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f0d0245

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    const-string v0, "CallDetail"

    const-string v1, "onPrepareOptionsMenu - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "CallDetail"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailIsRunning:Z

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "CallDetail"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/util/AsyncTaskExecutor;->cancel(Z)Z

    return-void
.end method
