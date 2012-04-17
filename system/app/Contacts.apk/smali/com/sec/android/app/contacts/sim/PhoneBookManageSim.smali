.class public Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
.super Ljava/lang/Object;
.source "PhoneBookManageSim.java"


# static fields
.field static final ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

.field public static final ADN_URI:Landroid/net/Uri;

.field static final DATA_PROJECTION:[Ljava/lang/String;

.field public static final DATA_URI:Landroid/net/Uri;

.field private static isFirstCheck:Z

.field private static mContext:Landroid/content/Context;

.field private static mCurrentSimState:I

.field private static mEmailLength:I

.field private static mEmailMaxIndex:I

.field private static mEmailUsedIndex:I

.field private static mMaxCount:I

.field private static mNameLength:I

.field private static mNumberLength:I

.field private static mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

.field private static mSimType:Ljava/lang/String;

.field private static mTelMan:Landroid/telephony/TelephonyManager;

.field private static mUsedCount:I

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field public final COPY_SUCCESS:I

.field private final EMAIL:Ljava/lang/String;

.field private final NAME:Ljava/lang/String;

.field public final NULL_CONTACT_ERROR:I

.field private final NUMBER:Ljava/lang/String;

.field public final WRITE_SIM_ERROR:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/data/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "is_primary"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->sEmptyContentValues:Landroid/content/ContentValues;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sput-boolean v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tag"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NAME:Ljava/lang/String;

    const-string v0, "number"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NUMBER:Ljava/lang/String;

    const-string v0, "emails"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->EMAIL:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->COPY_SUCCESS:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NULL_CONTACT_ERROR:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->WRITE_SIM_ERROR:I

    sput-object p1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    return-void
.end method

.method private deleteItemByContactsId(J)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    return-object v0
.end method


# virtual methods
.method public copyToPhone(JLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 21

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v14, v2, :cond_3

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    return v2

    :cond_4
    const/16 v18, 0x0

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    const-string v2, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "account_type"

    move-object/from16 v0, p4

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_3
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v15, :cond_5

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v2, "raw_contact_id"

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    invoke-virtual {v9, v2, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v16, :cond_6

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v2, "raw_contact_id"

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v13, :cond_7

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v2, "raw_contact_id"

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    invoke-virtual {v9, v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :try_start_0
    invoke-virtual {v10, v8}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    const/4 v2, 0x0

    aget-object v2, v18, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_9

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_8
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v9, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_3

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_9
    if-eqz p5, :cond_a

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_2
.end method

.method public copyToSim(JZ)I
    .locals 22

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    const-string v16, ""

    const-string v17, ""

    const-string v13, ""

    const/4 v15, 0x1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v14, v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v15, :cond_2

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x2

    :goto_2
    return v2

    :cond_5
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    if-le v2, v3, :cond_6

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    :cond_6
    const-string v2, "tag"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v17, :cond_9

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v2, v3, :cond_8

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    :cond_8
    const-string v2, "number"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    if-le v2, v3, :cond_a

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    :cond_a
    const-string v2, "emails"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 v18, 0x0

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {v10, v8}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    const/4 v2, 0x0

    aget-object v2, v18, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_c

    const/4 v2, -0x1

    goto/16 :goto_2

    :catch_0
    move-exception v12

    const/4 v2, -0x1

    goto/16 :goto_2

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V

    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_c
    if-eqz p3, :cond_d

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_2
.end method

.method public copyToSimThrougtIccProvider(JZ)I
    .locals 17

    const-string v2, "content://icc/adn/expansion"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    const-string v14, ""

    const-string v9, ""

    const-string v10, ""

    const-string v12, ""

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v13, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    goto :goto_1

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "tag"

    invoke-virtual {v8, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "number"

    invoke-virtual {v8, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AnrNumber"

    invoke-virtual {v8, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "emails"

    invoke-virtual {v8, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v15, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    if-eqz p3, :cond_6

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    :cond_6
    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public getByteArrayText(Ljava/lang/String;)[B
    .locals 10

    const/4 v7, 0x0

    new-array v0, v7, [B

    new-array v1, v7, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p1, v7}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    const-string v7, "PhoneBookManageSim"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Curr chracter : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xe01

    if-lt v7, v8, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xe5b

    if-gt v7, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    const-string v7, "PhoneBookManageSim"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Curr thaiLength : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    :try_start_1
    const-string v7, "ISO-10646-UCS-2"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v7, "THL"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-lez v6, :cond_3

    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v7, v6

    new-array v0, v7, [B

    goto :goto_2

    :cond_3
    array-length v7, v1

    add-int/lit8 v7, v7, -0x2

    new-array v0, v7, [B

    goto :goto_2

    :cond_4
    array-length v7, v1

    new-array v0, v7, [B

    const/4 v7, 0x2

    const/4 v8, 0x0

    array-length v9, v1

    add-int/lit8 v9, v9, -0x2

    invoke-static {v1, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getEmailLength()I
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    return v0
.end method

.method public getNameLength()I
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    return v0
.end method

.method public getNumberLength()I
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    return v0
.end method

.method public getSimMaxCount()I
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    :cond_1
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    return v0
.end method

.method getSimStatus(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v4, "1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "3"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const-string v4, "PhoneBookManageSim"

    const-string v5, "getSimStatus Start : 2G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    new-array v2, v4, [I

    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v4, 0x6f3a

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const/4 v4, 0x0

    aget v4, v2, v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    aget v4, v2, v6

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    aget v4, v2, v9

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    aget v4, v2, v8

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    :cond_2
    :goto_1
    const-string v4, "PhoneBookManageSim"

    const-string v5, "getSimStatus End"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v4, "PhoneBookManageSim"

    const-string v5, "RemoteException occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "PhoneBookManageSim"

    const-string v5, "SecurityException occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v4, "PhoneBookManageSim"

    const-string v5, "NullPointerException occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v4, "2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "PhoneBookManageSim"

    const-string v5, "getSimStatus Start : 3G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>()V

    :try_start_1
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    :cond_4
    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3, v6, v6}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v3, v6, v9}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    invoke-virtual {v3, v7, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v3, v8, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    invoke-virtual {v3, v8, v6}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v4, "PhoneBookManageSim"

    const-string v5, "RemoteException occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_4
    move-exception v0

    const-string v4, "PhoneBookManageSim"

    const-string v5, "SecurityException occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getSimType()Ljava/lang/String;
    .locals 1

    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    return-object v0
.end method

.method public getSimUsedCount()I
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    return v0
.end method

.method public isEmailFull()Z
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "emails"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "account_type=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.sec.contact.sim"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    if-le v0, v2, :cond_3

    const-string v0, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : false max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto :goto_0

    :cond_3
    const-string v0, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto/16 :goto_0
.end method

.method public isSimDBReady()Z
    .locals 4

    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSimDBReady(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const-string v1, "PhoneBookManageSim"

    const-string v2, "SimDB Loading..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    sget-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    :cond_1
    const-string v1, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimDBReady() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSimEnabled()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    const-string v1, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimEnabled() return false < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v2, v3, :cond_2

    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAdnEditable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "PhoneBookManageSim"

    const-string v2, "Adn is not editable..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "PhoneBookManageSim"

    const-string v2, "isSimEnabled() return true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public isSimFull()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "account_type = \'vnd.sec.contact.sim\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    if-le v0, v1, :cond_4

    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : false max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    :cond_4
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : true max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto/16 :goto_0
.end method

.method public isSimSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    if-le p2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
