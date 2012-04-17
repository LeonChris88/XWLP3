.class public Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.super Landroid/app/ListActivity;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$StatusQuery;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedQuery;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;
    }
.end annotation


# static fields
.field static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field actionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCkTitle:Z

.field private mCursor:Landroid/database/Cursor;

.field private mData:Ljava/lang/String;

.field private mDateType:C

.field private mDay:I

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayNameSource:I

.field mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mHasEntities:Z

.field private mHasLinked:Z

.field private mHasStatuses:Z

.field private mHeaderView:Landroid/view/View;

.field mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mInternetEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirectLaunch:Z

.field private mIsFirstOther:I

.field private mItemCount:I

.field private mLabel:Ljava/lang/String;

.field private mLinked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLookupUri:Landroid/net/Uri;

.field private mMimetype:Ljava/lang/String;

.field private mMode:I

.field private mMonth:I

.field private mNameCount:I

.field private mNameRawContactId:J

.field private mNumPhoneNumbers:I

.field private mObserver:Landroid/database/ContentObserver;

.field mOrganizationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mOtherEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadOnlySourcesCnt:I

.field private mResolver:Landroid/content/ContentResolver;

.field mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectableItem:I

.field mSelectedContactUri:Landroid/net/Uri;

.field mSelectedContactsId:J

.field private mSendDataList:[Ljava/lang/String;

.field private mShowSmsLinksForAllPhones:Z

.field private mStatuses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field protected mWritableRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mWritableSourcesCnt:I

.field private mYear:I

.field sendMenuItem:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNumPhoneNumbers:I

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameCount:I

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCkTitle:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRawContactIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mInternetEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasEntities:Z

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasStatuses:Z

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasLinked:Z

    iput-wide v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameRawContactId:J

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayNameSource:I

    const/16 v0, 0x41

    iput-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    iput-wide v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectedContactsId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEntities:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLinked:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mObserver:Landroid/database/ContentObserver;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startEntityQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)C
    .locals 1

    iget-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->performSendAction(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEntities:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasEntities:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->considerBindData()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setDateData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addAllMember()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->addSelectedContact(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private bindData()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildEntries()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mInternetEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCkTitle:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->actionBar:Landroid/app/ActionBar;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupTitle(Landroid/app/ActionBar;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setSections(Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method

.method static buildActionString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p3, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final buildEntries()V
    .locals 24

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mReadOnlySourcesCnt:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableSourcesCnt:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v6, :cond_1b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v7, v4

    move v8, v5

    move v4, v3

    move v3, v2

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v17

    const-string v5, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v5, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableSourcesCnt:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableSourcesCnt:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move v11, v3

    move v12, v4

    move v10, v7

    move v13, v8

    :cond_2
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    iget-object v9, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_id"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v2, "mimetype"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "data_set"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v3, :cond_2

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JJLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    move v14, v2

    :goto_3
    const-string v2, "is_super_primary"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "vnd.android.cursor.item/name"

    invoke-static/range {v22 .. v23}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameCount:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameCount:I

    :cond_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "vnd.android.cursor.item/name"

    invoke-static/range {v22 .. v23}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNumPhoneNumbers:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNumPhoneNumbers:I

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mShowSmsLinksForAllPhones:Z

    if-eqz v2, :cond_4

    :cond_4
    :goto_5
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLabel:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mData:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMimetype:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_3

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_7
    const-string v22, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v14

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/contacts/util/DataStatus;

    if-eqz v10, :cond_8

    const-string v2, "vnd.android.cursor.item/im"

    const-string v2, "vnd.android.cursor.item/im"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JJLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v10, v14

    goto/16 :goto_5

    :cond_9
    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v14, :cond_c

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f0a0157

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/DataStatus;

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez v14, :cond_d

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_d
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameRawContactId:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayNameSource:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_11

    if-eqz v14, :cond_e

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_e
    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    const-string v2, ""

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntryForOther(ILcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_10
    const/4 v2, 0x0

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    :cond_12
    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v14, :cond_13

    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntryForOther(ILcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_13
    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v14, :cond_14

    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_14
    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v14, :cond_15

    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mInternetEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v7, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/DataStatus;

    iget-boolean v3, v4, Lcom/android/contacts/model/DataKind;->actionBodySocial:Z

    if-eqz v3, :cond_18

    if-eqz v2, :cond_18

    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_16

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    :cond_16
    if-nez v3, :cond_17

    if-eqz v14, :cond_4

    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFirstEntryForOther(ILcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->checkDateValue(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_18
    const/4 v3, 0x0

    goto :goto_8

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1a
    move v3, v11

    move v4, v12

    move v7, v10

    move v8, v13

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mInternetEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    new-instance v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLabel:Ljava/lang/String;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mData:Ljava/lang/String;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMimetype:Ljava/lang/String;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseSendData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->performSendAction(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->closeCursor()V

    :cond_1c
    return-void
.end method

.method private checkDateValue(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const-string v5, "."

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v9, [Ljava/lang/String;

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget-object v4, v0, v6

    if-eqz v4, :cond_2

    aget-object v4, v0, v7

    if-eqz v4, :cond_1

    aget-object v4, v0, v8

    if-nez v4, :cond_2

    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const-string v5, "-"

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    aget-object v4, v0, v6

    if-eqz v4, :cond_4

    aget-object v4, v0, v7

    if-eqz v4, :cond_3

    aget-object v4, v0, v8

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_6

    :try_start_0
    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    if-eqz v2, :cond_5

    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    :catch_1
    move-exception v1

    if-eqz v2, :cond_5

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_6
    return-void
.end method

.method private closeCursor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method private considerBindData()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasEntities:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasStatuses:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasLinked:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindData()V

    :cond_0
    return-void
.end method

.method private extractDate(C[Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    :goto_0
    return-void

    :pswitch_0
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    goto :goto_0

    :pswitch_1
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    goto :goto_0

    :pswitch_2
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDateTypeInSetting()V
    .locals 3

    const/16 v2, 0x41

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MM/dd/yyyy"

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iput-char v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    :goto_0
    return-void

    :sswitch_0
    iput-char v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x42

    iput-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x43

    iput-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_2
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private performSendAction(Z)V
    .locals 7

    const/4 v5, 0x1

    const-string v0, ""

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    iput v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_3

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    if-ne v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v5, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    if-ne v3, v5, :cond_8

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsDirectLaunch:Z

    if-eqz v3, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "sms_body"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "namecard_string"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    goto :goto_2

    :cond_8
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.TITLE"

    const-string v4, "Contact"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    goto :goto_2
.end method

.method private reArrangeDate(CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v4, :cond_9

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    if-ge v3, v4, :cond_0

    move v2, v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_6

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_1
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v2, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_8

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_3
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v2, :cond_2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    if-eqz v0, :cond_3

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v2, :cond_4

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_4
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    if-eqz v2, :cond_5

    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    :cond_5
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDay:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_7

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_4
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized readLinked(Landroid/database/Cursor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLinked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;->id:I

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;->accountName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;->accountType:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedInfo;->displayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLinked:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasLinked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized readStatuses(Landroid/database/Cursor;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/android/contacts/util/DataStatus;

    invoke-direct {v2, p1}, Lcom/android/contacts/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mStatuses:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasStatuses:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private removeAllMember()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setDateData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const-string v5, "."

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v5, v10, [Ljava/lang/String;

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v0, v5, v2

    if-eqz v0, :cond_2

    aget-object v0, v5, v1

    if-eqz v0, :cond_1

    aget-object v0, v5, v8

    if-nez v0, :cond_2

    :cond_1
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const-string v6, "-"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_2
    if-ge v0, v10, :cond_4

    aget-object v4, v5, v0

    if-eqz v4, :cond_3

    aget-object v4, v5, v0

    const-string v6, "T"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v5, v8

    const/16 v6, 0x54

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    aget-object v6, v5, v0

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    aget-object v0, v5, v2

    if-eqz v0, :cond_6

    aget-object v0, v5, v1

    if-eqz v0, :cond_6

    aget-object v0, v5, v8

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    :cond_5
    :goto_3
    move v0, v2

    :goto_4
    if-ge v0, v10, :cond_c

    :try_start_0
    aget-object v4, v5, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    aget-object v0, v5, v2

    if-eqz v0, :cond_5

    aget-object v0, v5, v1

    if-nez v0, :cond_5

    aget-object v0, v5, v8

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    const/4 v0, 0x1

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    const/4 v0, 0x2

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v0, :cond_7

    const/16 v6, 0xd

    if-lt v0, v6, :cond_8

    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    goto/16 :goto_3

    :cond_8
    if-lez v4, :cond_9

    const/16 v0, 0x20

    if-lt v4, v0, :cond_5

    :cond_9
    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_1
    move-exception v4

    if-nez v0, :cond_a

    const-string v4, "0"

    aput-object v4, v5, v2

    goto/16 :goto_5

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v8

    goto/16 :goto_5

    :catch_2
    move-exception v4

    if-nez v0, :cond_b

    const-string v4, "0"

    aput-object v4, v5, v2

    goto/16 :goto_5

    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v8

    goto/16 :goto_5

    :cond_c
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->dateType:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->dateType:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x41

    invoke-direct {p0, v0, v5}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->extractDate(C[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getDateTypeInSetting()V

    iget-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->reArrangeDate(CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/16 v0, 0x41

    invoke-direct {p0, v0, v5}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->extractDate(C[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getDateTypeInSetting()V

    iget-char v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDateType:C

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->reArrangeDate(CLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method private setFirstEntry(ZLcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isFirst:Z

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private setFirstEntryForOther(ILcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isFirst:Z

    iput p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsFirstOther:I

    :cond_0
    return-void
.end method

.method private static setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 13

    const/4 v4, 0x4

    const/4 v12, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "data"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "name_raw_contact_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "display_name_source"

    aput-object v4, v2, v0

    const-string v0, "lookup"

    aput-object v0, v2, v5

    const-string v0, "mimetype"

    aput-object v0, v2, v12

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "lookup"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move-object v3, v6

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setupTitle(Landroid/app/ActionBar;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x1e

    const/4 v5, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCkTitle:Z

    if-eqz p1, :cond_2

    const-string v1, ""

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsDirectLaunch:Z

    if-eqz v4, :cond_3

    const v4, 0x7f0a020b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f040018

    invoke-virtual {v2, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_1

    const v4, 0x7f040037

    invoke-virtual {v2, v4, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0d0090

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    const v4, 0x7f0d009e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    new-instance v5, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0d009f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    const v4, 0x7f0a0239

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const v4, 0x7f0a020e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private declared-synchronized startEntityQuery()V
    .locals 19

    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->closeCursor()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "name_raw_contact_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameRawContactId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "display_name_source"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayNameSource:I

    const-string v16, ""

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "mimetype"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_3

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNameRawContactId:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayNameSource:I

    const v2, 0x7f0a0046

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectedContactUri:Landroid/net/Uri;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "data"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getColumnCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_8

    const v2, 0x7f0a007e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    :cond_8
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectedContactsId:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasEntities:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHasStatuses:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectedContactUri:Landroid/net/Uri;

    const-string v7, "raw_contacts2"

    invoke-static {v2, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$LinkedQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v9, "contact_id=?"

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v8, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$StatusQuery;->PROJECTION:[Ljava/lang/String;

    const-string v9, "mode IS NOT NULL OR status IS NOT NULL"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v11}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateHeaderView()V
    .locals 5

    const v4, 0x7f0d0090

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSelectableItem:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->sendMenuItem:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addSelectedContact(IZ)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    if-nez p2, :cond_2

    if-lez p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mItemCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseSendData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->updateHeaderView()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSendDataList:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0400b3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setContentView(I)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CONTACT_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    const-string v1, "mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const-string v1, "direct_launch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsDirectLaunch:Z

    new-instance v1, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mInternetEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCkTitle:Z

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->closeCursor()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->removeAllMember()V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startEntityQuery()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->updateHeaderView()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->addAllMember()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->addSelectedContact(IZ)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->closeCursor()V

    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    :try_start_0
    invoke-direct {p0, p3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->readStatuses(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->considerBindData()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_5

    :try_start_1
    invoke-direct {p0, p3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->readLinked(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->considerBindData()V

    goto :goto_0

    :catchall_1
    move-exception v1

    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;

    invoke-direct {v1, p0, p3, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/database/Cursor;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startEntityQuery()V

    return-void
.end method

.method public parseSendData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v0, " "

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "\n"

    :cond_0
    :goto_0
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    iget-object v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v0, " : "

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_4
    const-string v1, "vnd.android.cursor.item/contact_event"

    iget-object v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setDateData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
