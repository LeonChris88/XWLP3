.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$DataQuery;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final LEADING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRAILING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

.field private mContactId:J

.field private mDefaultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mHasFinishedAnimatingIn:Z

.field private mHasStartedAnimatingOut:Z

.field private mLineAfterTrack:Landroid/view/View;

.field private final mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private mListPager:Landroid/support/v4/view/ViewPager;

.field private mLookupUri:Landroid/net/Uri;

.field private mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

.field private mPhotoContainer:Landroid/view/View;

.field private final mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

.field private mSelectedTabRectangle:Landroid/view/View;

.field private mSortedActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackScroller:Landroid/widget/HorizontalScrollView;

.field private final mTypeViewClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasStartedAnimatingOut:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-direct {v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->handleOutsideTouch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ActionMultiMap;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/NotifyingAsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private bindData(Landroid/database/Cursor;)V
    .locals 49

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v23

    move-object/from16 v4, p0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    new-instance v44, Lcom/android/contacts/util/DataStatus;

    invoke-direct/range {v44 .. v44}, Lcom/android/contacts/util/DataStatus;-><init>()V

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v11, 0x7f0d0087

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/ImageView;

    const/16 v39, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_b

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/DataStatus;->possibleUpdate(Landroid/database/Cursor;)V

    const/16 v10, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v10, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    const/16 v35, 0x1

    :goto_1
    const/16 v10, 0x11

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_3

    const/16 v36, 0x1

    :goto_2
    const-string v10, "vnd.android.cursor.item/photo"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "data14"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_4

    const/16 v32, 0x1

    :goto_3
    if-eqz v32, :cond_1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    sget-object v10, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v28

    invoke-static {v10, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    new-instance v11, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v42

    invoke-direct {v11, v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/net/Uri;Landroid/widget/ImageView;)V

    sget-object v12, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Void;

    invoke-virtual {v11, v12, v10}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    const-string v10, "data15"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v40

    if-eqz v40, :cond_0

    const/4 v10, 0x0

    move-object/from16 v0, v40

    array-length v11, v0

    move-object/from16 v0, v40

    invoke-static {v0, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v39

    goto/16 :goto_0

    :cond_2
    const/16 v35, 0x0

    goto :goto_1

    :cond_3
    const/16 v36, 0x0

    goto :goto_2

    :cond_4
    const/16 v32, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v47

    if-eqz v47, :cond_7

    if-nez v36, :cond_6

    if-eqz v35, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v6, :cond_9

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    new-instance v9, Lcom/android/contacts/quickcontact/DataAction;

    const-string v11, "vnd.android.cursor.item/vcall-address"

    move-object v10, v4

    move-object v12, v6

    move-wide v13, v7

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v48

    if-eqz v48, :cond_9

    if-nez v36, :cond_8

    if-eqz v35, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v11, "vnd.android.cursor.item/vcall-address"

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const/16 v10, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_a

    const/16 v33, 0x1

    :goto_4
    if-eqz v33, :cond_0

    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "vnd.android.cursor.item/im"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v13

    if-eqz v13, :cond_0

    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v12, "vnd.android.cursor.item/im"

    move-object v10, v3

    move-object v11, v4

    move-wide v14, v7

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_0

    :cond_a
    const/16 v33, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/ActionMultiMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_5

    :cond_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/4 v10, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    const/4 v10, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v43

    move/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcom/android/contacts/ContactPresenceIconUtil;->getChatCapabilityIcon(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v45

    const v10, 0x7f0d0095

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v10, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    :cond_d
    if-eqz v42, :cond_e

    if-eqz v39, :cond_10

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_e
    :goto_6
    new-instance v25, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/ActionMultiMap;->keySet()Ljava/util/Set;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    sget-object v10, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_f
    :goto_7
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J

    invoke-static {v10, v11, v14, v15}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v10

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_11
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v37, v0

    const/16 v34, 0x0

    :goto_8
    move/from16 v0, v34

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    aget-object v5, v21, v34

    sget-object v10, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v34, v34, 0x1

    goto :goto_8

    :cond_13
    sget-object v10, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_14
    :goto_9
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_a
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v22, :cond_16

    new-instance v46, Landroid/widget/ImageView;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x2

    const/16 v12, 0x44

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v10, 0x0

    const/16 v11, 0x12

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v10, v11, v12, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v10, 0x7f02020a

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v5, v1, v10, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_18

    const/16 v31, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    if-eqz v31, :cond_19

    const/4 v10, 0x0

    :goto_c
    invoke-virtual {v11, v10}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    if-eqz v31, :cond_1a

    const/4 v10, 0x0

    :goto_d
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    if-eqz v31, :cond_1b

    const/4 v10, 0x0

    :goto_e
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v31, :cond_1c

    const/4 v10, 0x0

    :goto_f
    invoke-virtual {v11, v10}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    return-void

    :cond_18
    const/16 v31, 0x0

    goto :goto_b

    :cond_19
    const/16 v10, 0x8

    goto :goto_c

    :cond_1a
    const/16 v10, 0x8

    goto :goto_d

    :cond_1b
    const/16 v10, 0x8

    goto :goto_e

    :cond_1c
    const/16 v10, 0x8

    goto :goto_f
.end method

.method private considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z
    .locals 2

    invoke-virtual {p2, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->hasResolve(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    return-object v0
.end method

.method private handleOutsideTouch()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasStartedAnimatingOut:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasStartedAnimatingOut:Z

    invoke-direct {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V

    move v0, v1

    goto :goto_0
.end method

.method private hide(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideChild(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideChild(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    goto :goto_0
.end method

.method private inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400aa

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/quickcontact/CheckableImageView;

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v5, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v4, p1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setTag(Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/Action;

    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v7}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    invoke-virtual {v4, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/android/contacts/quickcontact/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v4
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setHeaderImage(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHeaderNameText(II)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private setHeaderNameText(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setHeaderText(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private show()V
    .locals 15

    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "contacts"

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    :cond_0
    const-string v0, "missing lookupUri"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J

    invoke-virtual {v9}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-nez v12, :cond_1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v12, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    const-string v0, "missing targetScreen"

    invoke-static {v12, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v0, v12}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setChildTargetScreen(Landroid/graphics/Rect;)V

    const-string v0, "exclude_mimes"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    const v0, 0x7f0d01d9

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v0, 0x7f0d0095

    const v4, 0x7f0a00fc

    invoke-direct {p0, v0, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(II)V

    const v0, 0x7f0d008d

    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0d01db

    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0d01dc

    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderImage(ILandroid/graphics/drawable/Drawable;)V

    const-string v0, "data"

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mimetype!=? OR (mimetype=? AND _id=photo_id)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "vnd.android.cursor.item/photo"

    aput-object v14, v6, v13

    const-string v13, "vnd.android.cursor.item/photo"

    aput-object v13, v6, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/high16 v2, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const v1, 0x7f0400a2

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setContentView(I)V

    const v1, 0x7f0d01d6

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    const v1, 0x7f0d01de

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const v1, 0x7f0d01dd

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    const v1, 0x7f0d0097

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    const v1, 0x7f0d01d8

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0d01df

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    const v1, 0x7f0d01d7

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v1, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->show()V

    return-void
.end method
