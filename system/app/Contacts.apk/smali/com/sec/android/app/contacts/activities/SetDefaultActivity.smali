.class public Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.super Landroid/app/ListActivity;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
    }
.end annotation


# instance fields
.field private isUsingTwoPanel:Z

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedEmailIndex:I

.field private mCheckedNameIndex:I

.field private mCheckedNumberIndex:I

.field private mCheckedPhotoIndex:I

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEmailChanged:Z

.field private mIsNameChanged:Z

.field private mIsNumberChanged:Z

.field private mIsPhotoChanged:Z

.field private mLayoutMain:Landroid/widget/LinearLayout;

.field protected mLookupUri:Landroid/net/Uri;

.field private mNameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->performSaveAction()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindData(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    return p1
.end method

.method private bindData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 23

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->initData()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v17

    const-string v2, "data_set"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "account_name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v9, v15}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v10, v11

    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Entity$NamedContentValues;

    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    if-eqz v3, :cond_3

    invoke-virtual {v14, v9, v15, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    move-result-object v13

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v8, p0

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    :cond_4
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    :cond_5
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    :cond_6
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupFlattenedList()V

    new-instance v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Landroid/app/ListActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    :cond_0
    const-string v3, "data2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isCustomType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "data3"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    iput-object p1, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    :cond_0
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "data1"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const v3, 0x104000e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-wide v1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    iput-object v0, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    iput-object p1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-boolean v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    iput v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 10

    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    iput-boolean v8, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    :cond_0
    const-string v8, "persist.sys.country"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    const-string v8, "TNZ"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "VNZ"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "VNX"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "NZC"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "PH"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "NO"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "SE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    const-string v8, "data1"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "normalized_number"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v4, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v8, "data2"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v0, 0x2

    :goto_0
    const/4 v7, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isCustomType(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "data3"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    const-string v8, "_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    iput-object p1, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v7, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    const-string v8, "data1"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v8, 0x2

    iput v8, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v5, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    :cond_0
    const/4 v0, 0x0

    const-string v2, "data15"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02018b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0242

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v2, "_id"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    iput-object v0, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    iput-object p2, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object p1, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    iput-boolean v5, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    iput v4, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object p1, p3

    goto :goto_1
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
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

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget-object v2, v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private initData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private isCustomType(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultData(Landroid/content/ContentValues;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "is_super_primary"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultName(Landroid/content/ContentValues;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "name_verified"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performSaveAction()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name_verified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    if-eqz v2, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->finish()V

    return-void
.end method

.method private prepareData()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private setLayout()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method private setupFlattenedList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private setupTitle()V
    .locals 10

    const/16 v9, 0x1e

    const/4 v8, -0x2

    const v6, 0x7f0a0255

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0d009e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d009f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v6, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isUsingTwoPanel:Z

    const v0, 0x7f0400bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setContentView(I)V

    const v0, 0x7f0d00cb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->prepareData()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupTitle()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-gez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

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
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    return-void
.end method
