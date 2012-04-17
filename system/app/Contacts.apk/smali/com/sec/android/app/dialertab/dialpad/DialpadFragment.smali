.class public Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static MannerModePressed:Z

.field private static final PROJECTION_LOG:[Ljava/lang/String;

.field private static final PROJECTION_NAME:[Ljava/lang/String;

.field private static final PROJECTION_NAME_REVERSE:[Ljava/lang/String;

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final PROJECTION_RESULT:[Ljava/lang/String;

.field private static final PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

.field private static final PROJECTION_SPEEDDIAL:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static condition:Landroid/os/ConditionVariable;

.field private static listResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private static numberArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;",
            ">;"
        }
    .end annotation
.end field

.field private static ttfTypeface:Landroid/graphics/Typeface;


# instance fields
.field private argsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private count:I

.field private dialogResult:Landroid/app/AlertDialog;

.field private digitText:Ljava/lang/String;

.field private mAddBtn:Landroid/widget/RelativeLayout;

.field private mAudioManager:Landroid/media/AudioManager;

.field mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialpad:Landroid/view/View;

.field private mDialpadAdditionalButtons:Landroid/view/View;

.field private mDialpadAdditionalButtonsLand:Landroid/view/View;

.field private mDialpadLand:Landroid/view/View;

.field private mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

.field private mFragmentView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mIsAddCallMode:Z

.field private mLastNumberDialed:Ljava/lang/String;

.field private mListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

.field private mMessageButton:Landroid/view/View;

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mReceiveHandler:Landroid/os/Handler;

.field private mSearchLayout:Landroid/widget/LinearLayout;

.field private mSearchLock:Ljava/lang/Object;

.field private mSearchView:Landroid/view/View;

.field private mSearchViewLand:Landroid/view/View;

.field private mSearchedCtNumberBefore:Z

.field private mSearchedLogBefore:Z

.field private mShowOptionsMenu:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVediocallButton:Landroid/view/View;

.field private mWasEmptyBeforeTextChange:Z

.field private message_counter:I

.field private message_flag:Z

.field private onKeypad:Ljava/lang/String;

.field private resultFlag:I

.field private subdialogResult:Landroid/app/AlertDialog;

.field thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    sput-boolean v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "key_number"

    aput-object v3, v0, v2

    const-string v3, "number"

    aput-object v3, v0, v1

    const-string v3, "display_name"

    aput-object v3, v0, v4

    const-string v3, "photo_id"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "data1"

    aput-object v3, v0, v1

    const-string v3, "data2"

    aput-object v3, v0, v4

    const-string v3, "is_super_primary"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "has_phone_number"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name_reverse"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "has_phone_number"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME_REVERSE:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "data1"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name_reverse"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "data1"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const-string v1, "logtype"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_LOG:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/phone/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subDialogBuilder(I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    return p1
.end method

.method static synthetic access$2200()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchLayout(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    :goto_0
    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-object v3

    :pswitch_1
    if-ne v4, v6, :cond_1

    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_2
    if-ne v4, v6, :cond_2

    const-string v0, "2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "a"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "b"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "c"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u05d3"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05d4"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05d5"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "b"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\u05d3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05d4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05d5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :pswitch_3
    if-ne v4, v6, :cond_4

    const-string v0, "3"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "d"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "e"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "f"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u05d0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05d1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05d2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "d"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "e"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "\u05d0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05d1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05d2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :pswitch_4
    if-ne v4, v6, :cond_6

    const-string v0, "4"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "g"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "h"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "i"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u05dd"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05de"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05df"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05e0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "h"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "i"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "\u05dd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05de"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05df"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05e0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :pswitch_5
    if-ne v4, v6, :cond_8

    const-string v0, "5"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "j"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "k"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "l"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u05d9"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05da"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05db"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05dc"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "j"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "k"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "l"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "\u05d9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05da"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05db"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05dc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :pswitch_6
    if-ne v4, v6, :cond_a

    const-string v0, "6"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "n"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "o"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u05d6"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05d7"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05d8"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "o"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "\u05d6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05d7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05d8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :pswitch_7
    if-ne v4, v6, :cond_c

    const-string v0, "7"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "p"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "q"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "r"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "s"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u05e8"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05e9"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05ea"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "p"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "q"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "\u05e8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05e9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05ea"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :pswitch_8
    if-ne v4, v6, :cond_e

    const-string v0, "8"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "t"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "u"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "v"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u05e5"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05e6"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05e7"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "u"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "\u05e5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05e6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05e7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :pswitch_9
    if-ne v4, v6, :cond_10

    const-string v0, "9"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "w"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "y"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "z"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u05e1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05e2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05e3"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u05e4"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "w"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "y"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "z"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "\u05e1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05e2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05e3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "\u05e4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :pswitch_a
    if-ne v4, v6, :cond_12

    const-string v0, "0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_12
    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :pswitch_b
    if-ne v4, v6, :cond_13

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :pswitch_c
    if-ne v4, v6, :cond_14

    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    move v1, v0

    :goto_d
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :pswitch_d
    if-ne v4, v6, :cond_15

    const-string v0, "+"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_15
    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_16
    move v2, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private clearDialString()V
    .locals 8

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-ne v5, v4, :cond_1

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v6, ""

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_1
    const-string v6, ""

    invoke-interface {v1, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    const-string v6, ""

    invoke-interface {v1, v7, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method private dailogBuildcreate()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreate(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040055

    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$5;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0286

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$4;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0285

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v0, "tel"

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v12

    const-string v4, "number_key"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSpeedDialNumber(JZ)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const v8, 0x7f0a0288

    const/4 v7, 0x0

    const-string v6, ""

    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "number"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    :cond_0
    :goto_1
    return-object v6

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v6

    goto :goto_0

    :cond_2
    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private getTouchWizFont()Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Input_TouchWiz_2010205.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private isDigitsEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutReady()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isNonSeparator(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method private listCreate(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-ne v1, v5, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    :cond_1
    sget-boolean v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<++++++++++>Search Start for Dialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<++++++++++>Search End for Dialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    if-ne v1, v5, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :pswitch_1
    if-ne v1, v5, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-boolean v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "<++++++++++>List create start : "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v1, v5, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    :cond_3
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne v1, v5, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_0

    :pswitch_1
    if-ne v1, v5, :cond_9

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_0

    :cond_9
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    :goto_0
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    const-string v0, ")"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_3
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    const-string v0, "("

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mannerModeSet()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setRingerMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0289

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setRingerMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a028a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private newVoicemailIntent()Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.getActivePhoneType() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static phoneIsInUse()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isIdle() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private placeCall_result(Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private placeVideoCall()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->digitText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "In placeVideoCall method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "videocall"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Out placeVideoCall method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 14

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v9, 0x0

    iput-boolean v13, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsAddCallMode:Z

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "add_call_mode"

    invoke-virtual {p1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsAddCallMode:Z

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_1

    iput v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    const-string v0, "tel"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v8, ""

    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    :cond_1
    :goto_0
    return v9

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    const-string v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    const-string v3, "3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_4
    const-string v3, "4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_5
    const-string v3, "5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_6
    const-string v3, "6"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_7
    const-string v3, "7"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_8
    const-string v3, "8"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_9
    const-string v3, "9"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_a
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_b
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_c
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_d
    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private sendSMS()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    const-string v3, ""

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setEditTextView(Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x6d

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x1e0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledWidth(F)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getTouchWizFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledDensity(F)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->requestFocus()Z

    return-void

    :cond_0
    const/16 v3, 0x4e

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x186

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "persist.sys.country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TNZ"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "VNZ"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "VNX"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "NZC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ATO"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "INU"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "INS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SLK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "NPL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "TML"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ETR "

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PH"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "NO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v1, v4, v5, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    :cond_1
    return-void
.end method

.method private setInputNumber(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    if-ge v0, v2, :cond_1

    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    aget-char v2, v1, v0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    aget-char v2, v1, v0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    aget-char v2, v1, v0

    add-int/lit8 v2, v2, -0x29

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    :sswitch_1
    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    :sswitch_2
    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    :sswitch_3
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    :sswitch_4
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_1

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_4
        0x2a -> :sswitch_3
        0x2b -> :sswitch_0
        0x2c -> :sswitch_1
        0x3b -> :sswitch_2
    .end sparse-switch
.end method

.method private setRingerMode(Z)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vibrate_in_silent"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method

.method private setSearchLayout(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V
    .locals 10

    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v0, :cond_1

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    int-to-long v8, v0

    invoke-direct {p0, v8, v9, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    const v0, 0x7f0d0151

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    const v0, 0x7f0d015c

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v0, 0x7f0d0151

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f020107

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0d0151

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f020107

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0d0153

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v2, :cond_2

    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v0, 0x7f0d0155

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0156

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0158

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0159

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d015a

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0284

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v2, p2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_a

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_3
    const v0, 0x7f0d0153

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "iw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070041

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    const/16 v4, 0x12

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_4
    const-string v0, "content://com.android.contacts/contacts/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v3, "mimetype"

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "is_super_primary"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    :cond_6
    const v0, 0x7f0d0158

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0159

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d015a

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    if-ltz v1, :cond_3

    add-int v0, v1, v3

    if-gt v1, v0, :cond_3

    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0155

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int v4, v1, v3

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0156

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :pswitch_2
    const v0, 0x7f0d0153

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v6, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v2, :cond_8

    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const v0, 0x7f0d0155

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0156

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0158

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0159

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d015a

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int/2addr v1, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    const v0, 0x7f0d0154

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a0284

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :pswitch_3
    invoke-virtual {v6, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const v0, 0x7f0d0153

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0d0158

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0159

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d015a

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int/2addr v1, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    move-object v0, v6

    goto/16 :goto_5

    :cond_a
    move v1, v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSearchView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0d014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0d015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0d0150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupAddtionalButtons(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0d0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mVediocallButton:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mVediocallButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mMessageButton:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mMessageButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0d0138

    const v5, 0x7f0d0137

    const v4, 0x7f0d0135

    const v3, 0x7f0d0134

    const v2, 0x7f0d0125

    const v1, 0x7f0d0133

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0d0139

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0d0139

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0d013b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0d013b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0d013c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0d013c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0d013d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0d013d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0d0140

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0d0140

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0d013f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0d0254

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    const v0, 0x7f0d0259

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d0255

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0d0256

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    const v2, 0x7f0d0257

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    const v2, 0x7f0d0258

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showAddToContact()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0296

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0286

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_LOG:[Ljava/lang/String;

    const-string v3, "contactid"

    const-string v5, " = 0 and "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    move-object v0, v6

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, ""

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    :cond_3
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    goto :goto_1
.end method

.method private smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    if-eqz v0, :cond_0

    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_LOG:[Ljava/lang/String;

    const-string v3, "contactid"

    const-string v5, " = 0 and "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "date"

    const-string v7, " DESC "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_2

    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, ""

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    goto :goto_0

    :cond_3
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    move-object v0, v6

    goto :goto_1
.end method

.method private smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    const-string v0, "content://com.android.contacts/contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x0

    move v9, v0

    :goto_2
    if-ge v9, v12, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    :goto_3
    if-nez v6, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v10, 0x1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Selection exception. Zeroing selection"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME:[Ljava/lang/String;

    const-string v3, "has_phone_number"

    const-string v5, " = 1 AND ("

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? OR "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name_alt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? )"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_2
.end method

.method private smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 12

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    if-ne v9, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v0, "content://com.android.contacts/contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v9, 0x1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME:[Ljava/lang/String;

    const-string v3, "has_phone_number"

    const-string v5, " = 1 AND ("

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? OR "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name_alt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? )"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    const-string v11, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_8

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v7, v2

    goto/16 :goto_2

    :cond_8
    move-object v2, v7

    goto :goto_3

    :cond_9
    move-object v2, v7

    goto :goto_4
.end method

.method private smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    const/16 v8, 0x22

    const/4 v9, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1"

    const-string v3, "replace("

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIKE ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT:[Ljava/lang/String;

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    move-object v0, v6

    goto/16 :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto/16 :goto_0

    :cond_3
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    goto :goto_1
.end method

.method private smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 12

    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v8, 0x22

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    if-eqz v0, :cond_0

    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1"

    const-string v3, "replace("

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIKE ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT:[Ljava/lang/String;

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_2

    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    goto/16 :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    goto/16 :goto_0

    :cond_3
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    move-object v0, v6

    goto :goto_1
.end method

.method private smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v8, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    const-string v3, "key_number="

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method private smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    const-string v3, "key_number="

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "number"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_2
    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v0, v4

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_2
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private subDialogBuilder(I)V
    .locals 6

    const/4 v4, 0x0

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v3, "mimetype"

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;

    const-string v3, "data2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "data1"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f040054

    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a0286

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateDialString(Ljava/lang/String;)V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-ne v5, v4, :cond_0

    invoke-interface {v1, v5, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    invoke-interface {v1, v2, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v5, "number string is null and returned"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iput-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->digitText:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    goto :goto_0

    :cond_2
    if-le v1, v4, :cond_3

    const/4 v4, 0x5

    if-ge v1, v4, :cond_3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-static {v4, v3, v5}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v4, 0x11

    iput v4, v2, Landroid/os/Message;->what:I

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v4

    if-le v1, v4, :cond_5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v5, "NullPointerException in afterTextChanged()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    return-void
.end method

.method public callVoicemail()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    return-void
.end method

.method public clearDigits()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    return-void
.end method

.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resolveIntent(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public dialButtonPressed()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "persist.radio.otaspdial"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "The phone number is prohibited explicitly by a rule."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a01fd

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "phone_prohibited_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_5

    const-string v1, "com.android.phone.CALL_ORIGIN"

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d014a

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d014b

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_a
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    if-nez v0, :cond_2

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    :cond_2
    sput-boolean v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_c
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialButtonPressed()V

    goto/16 :goto_0

    :sswitch_e
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeVideoCall()V

    goto/16 :goto_0

    :sswitch_f
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->sendSMS()V

    goto/16 :goto_0

    :sswitch_10
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    :cond_3
    iput v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    goto/16 :goto_0

    :sswitch_11
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    :sswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showAddToContact()V

    goto/16 :goto_0

    :sswitch_13
    const v0, 0x7f0d0158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto/16 :goto_0

    :sswitch_14
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dailogBuildcreate()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0d0125 -> :sswitch_b
        0x7f0d0133 -> :sswitch_0
        0x7f0d0134 -> :sswitch_1
        0x7f0d0135 -> :sswitch_2
        0x7f0d0137 -> :sswitch_3
        0x7f0d0138 -> :sswitch_4
        0x7f0d0139 -> :sswitch_5
        0x7f0d013b -> :sswitch_6
        0x7f0d013c -> :sswitch_7
        0x7f0d013d -> :sswitch_8
        0x7f0d013f -> :sswitch_9
        0x7f0d0140 -> :sswitch_a
        0x7f0d0142 -> :sswitch_d
        0x7f0d0143 -> :sswitch_e
        0x7f0d0144 -> :sswitch_f
        0x7f0d0145 -> :sswitch_c
        0x7f0d014a -> :sswitch_10
        0x7f0d014b -> :sswitch_11
        0x7f0d0150 -> :sswitch_13
        0x7f0d015b -> :sswitch_14
        0x7f0d015e -> :sswitch_12
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resetAllLayout(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setEditTextView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    sget-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged->>onKeypad == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setInputNumber(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "<<<<<<<<<<<<<<<<<<onCreate>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->digitText:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Vibrate control bool missing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    sget-object v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "<<<<<<<<<<<<<<<<<<onCreateView>>>>>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f040059

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setDefaultLayout()V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->forceHideSoftInput(Z)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorColor(I)V

    const-string v3, "persist.sys.country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TNZ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VNZ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VNX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NZC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ATO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "INU"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "INS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SLK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NPL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TML"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ETR "

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-static {v3, v4}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    return-object v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialButtonPressed()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0d014a
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sput-boolean v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->clearDialString()V

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x2

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x3

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x4

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x5

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_5

    const-wide/16 v2, 0x6

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_6

    const-wide/16 v2, 0x7

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :sswitch_8
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_7

    const-wide/16 v2, 0x8

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :sswitch_9
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_8

    const-wide/16 v2, 0x9

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :sswitch_a
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mannerModeSet()V

    sput-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :sswitch_b
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v1, ","

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    move v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0d0125 -> :sswitch_c
        0x7f0d0133 -> :sswitch_1
        0x7f0d0134 -> :sswitch_2
        0x7f0d0135 -> :sswitch_3
        0x7f0d0137 -> :sswitch_4
        0x7f0d0138 -> :sswitch_5
        0x7f0d0139 -> :sswitch_6
        0x7f0d013b -> :sswitch_7
        0x7f0d013c -> :sswitch_8
        0x7f0d013d -> :sswitch_9
        0x7f0d013f -> :sswitch_b
        0x7f0d0140 -> :sswitch_a
        0x7f0d0145 -> :sswitch_0
        0x7f0d014a -> :sswitch_d
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "additional"

    const-string v3, "phone-need-call"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showAddToContact()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.contacts.activities.action.SPEED_DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    const-string v1, ","

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v1, ";"

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0254
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "<<<<<<<<<<<<<<<<<<<onPause>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "<<<<<<<<<<<<<<<<<<<onResume>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resetAllLayout(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setEditTextView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    sget-boolean v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume->>onKeypad == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setInputNumber(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_5

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "<<<<<<<<<<<<<<<<<<<onStart>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DialerHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "<<<<<<<<<<<<<<<<<<<onStop>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    return-void
.end method

.method playTone(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_2

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v2, "situation=0;device=0"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2, v0}, Landroid/media/ToneGenerator;->setVolume(F)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x96

    invoke-virtual {v0, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public resetAllLayout(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    const v1, 0x7f0d014b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtons:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupAddtionalButtons(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupAddtionalButtons(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setDefaultLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtons:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    return-void
.end method

.method public setListener(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

    return-void
.end method
