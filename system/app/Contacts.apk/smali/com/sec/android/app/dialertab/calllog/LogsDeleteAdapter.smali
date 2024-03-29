.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "LogsDeleteAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;
.implements Ljava/lang/Runnable;


# instance fields
.field private final NOR_INT:I

.field private final SEP_INT:I

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

.field private final mIsMulti:Z

.field private mLoading:Z

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->NOR_INT:I

    const/16 v3, 0x37

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->SEP_INT:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCurrentCountryIso:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-static {v3}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v3, v2, p3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v3, v1, v4, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;-><init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsMulti:Z

    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 53

    const-string v18, "LogsDeleteAdapter"

    const-string v19, "========= bindView =========  "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v41

    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    move/from16 v0, p3

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v44, 0x0

    :goto_0
    move/from16 v0, v44

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    aput v18, v37, v44

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v44, v44, 0x1

    goto :goto_0

    :cond_0
    sget-object v18, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    new-instance v19, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    move-object/from16 v0, v19

    move/from16 v1, v42

    move-object/from16 v2, v37

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I[II)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x37

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v49, 0x0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    aget-object v49, v18, v19

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsMulti:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    const v18, 0x7f0d004b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v18, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v18, 0xf

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    const/16 v18, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v18, 0xf

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v18, "cdnip_number"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    const-string v18, "service_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v47

    const-string v18, "cnap_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v0, p2

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v39

    if-nez v39, :cond_6

    const/16 v48, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_4
    sget-object v48, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v32, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    move/from16 v30, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    move-wide/from16 v50, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v9

    const/16 v18, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_d

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    invoke-direct/range {v4 .. v17}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v20, v52

    move-object/from16 v21, v4

    move/from16 v23, p3

    invoke-virtual/range {v18 .. v23}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-object/from16 v18, p0

    move-object/from16 v19, v52

    move-wide/from16 v20, v50

    move-object/from16 v22, v32

    invoke-direct/range {v18 .. v24}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mFirst:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_5
    return-void

    :catch_0
    move-exception v43

    const-string v18, "LogsDeleteAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception in bindView Logdelete "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    invoke-interface/range {v39 .. v39}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v48, v18

    goto/16 :goto_2

    :cond_7
    if-nez v39, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v48, v38

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v48

    iput-object v6, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    invoke-interface/range {v39 .. v39}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    :cond_9
    :goto_5
    sget-object v18, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v48

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    :cond_a
    move-object/from16 v0, v48

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v18

    if-nez v18, :cond_9

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto :goto_5

    :cond_c
    move-object/from16 v48, v38

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v48

    iput-object v6, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto/16 :goto_3

    :cond_d
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v33, 0x0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    move/from16 v28, v14

    move/from16 v34, v15

    move-object/from16 v35, v16

    move-object/from16 v36, v17

    invoke-direct/range {v18 .. v36}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
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

    const-string v1, "LogsDeleteAdapter"

    const-string v2, "========= findAndCacheViews ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    move-result-object v0

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

    iget-object p3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCurrentCountryIso:Ljava/lang/String;

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

    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

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

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v2

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    :goto_1
    return v3

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

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
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v5, p1, v1}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    goto :goto_1
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

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

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

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
    .locals 2

    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= addGroup ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= addGroups ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    return-void
.end method

.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindChildView ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindGroupView ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method public bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindStandAloneView ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method public disableRequestProcessingForTest()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z

    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mFirst:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->startRequestProcessing()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mFirst:Z

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

.method public injectContactInfoForTest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

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

    const-string v2, "LogsDeleteAdapter"

    const-string v3, "========= newChildView ========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    return-object v1
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v2, "LogsDeleteAdapter"

    const-string v3, "========= newGroupView ========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    return-object v1
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v2, "LogsDeleteAdapter"

    const-string v3, "========= newStandAloneView ========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    return-object v1
.end method

.method public onPreDraw()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mFirst:Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 10

    const/4 v3, 0x0

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mDone:Z

    if-nez v6, :cond_3

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

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

    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mDone:Z

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfo(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

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

    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mDone:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "CallLogContactLookup"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
