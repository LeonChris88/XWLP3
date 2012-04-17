.class public Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# instance fields
.field private final NOR_INT:I

.field private final SEP_INT:I

.field private final mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private final mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Ljava/lang/Thread;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/dialertab/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;

.field private volatile mDone:Z

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoading:Z

.field mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/dialertab/calllog/ContactInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xa

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->NOR_INT:I

    const/16 v2, 0x37

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->SEP_INT:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCurrentCountryIso:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/16 v2, 0x64

    invoke-static {v2}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v1, p5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v1, v0, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v3, v4, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;-><init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 55

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x37

    if-ne v3, v4, :cond_0

    const/16 v51, 0x0

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    aget-object v51, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v3, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    const/4 v3, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v3, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v40

    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v3, p0

    move/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-1"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-2"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-3"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-4"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    sparse-switch v17, :sswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v3, v8}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v41

    if-nez v41, :cond_4

    const/16 v47, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    sget-object v47, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v35, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    move/from16 v33, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    move-wide/from16 v52, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v12

    const/4 v3, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "cdnip_number"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    const-string v3, "service_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    const-string v3, "cnap_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    invoke-direct/range {v7 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/16 v49, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    move-object/from16 v23, v54

    move-object/from16 v24, v7

    move/from16 v26, p3

    invoke-virtual/range {v21 .. v26}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V

    if-nez v35, :cond_d

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->randomThumbnail(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mFirst:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-object/from16 v0, v54

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->registerForList(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v43

    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in bindView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnMessageIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    invoke-interface/range {v41 .. v41}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v47, v3

    goto/16 :goto_2

    :cond_5
    if-nez v41, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-virtual {v3, v8, v4}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v47, v40

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v8, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v47

    iput-object v9, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto/16 :goto_3

    :cond_6
    invoke-interface/range {v41 .. v41}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v8, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    :cond_7
    :goto_6
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v47

    if-eq v0, v3, :cond_a

    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    if-nez v3, :cond_8

    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    :cond_8
    move-object/from16 v0, v47

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v8, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto :goto_6

    :cond_a
    move-object/from16 v47, v40

    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v47

    iput-object v9, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v36, 0x0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v27, v13

    move-wide/from16 v29, v15

    move/from16 v31, v17

    move/from16 v37, v18

    move-object/from16 v38, v19

    move-object/from16 v39, v20

    invoke-direct/range {v21 .. v39}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v21, p0

    move-object/from16 v22, v54

    move-wide/from16 v23, v52

    move-object/from16 v25, v35

    invoke-direct/range {v21 .. v27}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_1
        0x1f4 -> :sswitch_0
        0x320 -> :sswitch_0
    .end sparse-switch
.end method

.method private callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 2

    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    move-result-object v0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v2, "persist.sys.country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, ""

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCurrentCountryIso:Ljava/lang/String;

    :cond_2
    const-string v2, "TNZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VNZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VNX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NZC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ATO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "INU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "INS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SLK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NPL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TML"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ETR "

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 4

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    return-object v0
.end method

.method private queryContactInfo(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v2, v5, :cond_1

    :cond_0
    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v2

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    :goto_1
    return v3

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v5, p1}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v5, p1, v1}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    goto :goto_1
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v8}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v8

    :cond_0
    sget-object v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 13

    const/4 v2, 0x0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v0, "lookup"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const-string v0, "photo_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v9

    :cond_0
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V
    .locals 8

    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v2, p2

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZJ)V

    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 8

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "name"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    iget v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-eq v3, v4, :cond_1

    const-string v3, "numbertype"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    :cond_1
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "numberlabel"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "lookup_uri"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_3
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "normalized_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_4
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "matched_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_5
    iget-wide v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    iget-wide v5, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    const-string v3, "photo_id"

    iget-wide v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x1

    :cond_6
    :goto_0
    if-nez v0, :cond_8

    :goto_1
    return-void

    :cond_7
    const-string v3, "name"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "numbertype"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "numberlabel"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "lookup_uri"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "matched_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "normalized_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "photo_id"

    iget-wide v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    return-void
.end method

.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method public bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method public disableRequestProcessingForTest()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mFirst:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->startRequestProcessing()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mFirst:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0, p1}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eqz v6, :cond_3

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v6, v0, :cond_3

    iget-object v7, v6, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "+"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    move-object p1, v7

    :cond_2
    return-object p1

    :cond_3
    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public injectContactInfoForTest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public invalidateCache()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->expireAll()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    return-object v1
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    return-object v1
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    return-object v1
.end method

.method protected onContentChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;->fetchLogs()V

    const-string v0, "CallLogAdapter"

    const-string v1, "onContentChanged is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mFirst:Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 10

    const/4 v3, 0x0

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mDone:Z

    if-nez v6, :cond_3

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object v1, v0

    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mDone:Z

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    :cond_3
    return-void
.end method

.method setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mDone:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "CallLogContactLookup"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopRequestProcessing()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mDone:Z

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
