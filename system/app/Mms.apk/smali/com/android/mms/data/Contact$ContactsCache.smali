.class public Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/android/mms/data/Contact$ContactsCache;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V

    return-void
.end method

.method private checkContactProviderAvailible()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v8

    const-string v4, "data1"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "Mms/ContactsCache"

    const-string v1, "checkContactProviderAvailible getContentResolver is NULL cursor!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    packed-switch v7, :pswitch_data_0

    const-string v0, "Mms/ContactsCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact DB busy!!!. checkContactQueryAvailible : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_0
    move v0, v9

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 11

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isNumberModified()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Mms/ContactsCache"

    const-string v8, "org number modified"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v6

    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "Mms/ContactsCache"

    const-string v8, "name changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Mms/ContactsCache"

    const-string v8, "label changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v7

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    const-string v7, "Mms/ContactsCache"

    const-string v8, "person id changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v7

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v8

    if-eq v7, v8, :cond_4

    const-string v7, "Mms/ContactsCache"

    const-string v8, "presence changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v7

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "Mms/ContactsCache"

    const-string v8, "avatar changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Mms/ContactsCache"

    const-string v8, "name changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 3

    monitor-enter p1

    const/4 v1, 0x2

    :try_start_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    monitor-enter p1

    :try_start_1
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    const-string v0, "Mms/ContactsCache"

    const-string v1, "getContactInfoForEmailAddress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/android/mms/data/Contact;

    invoke-direct {v9, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v12

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v10, 0x0

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v9, v0, v1}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v9, v11}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v10, 0x1

    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_0

    :try_start_2
    invoke-direct {p0, v9}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v9, v8}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v9

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 19

    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x3b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v10, Lcom/android/mms/data/Contact;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v18

    const/16 v17, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v5, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v6, v2

    const/4 v2, 0x1

    aput-object v16, v6, v2

    const/4 v2, 0x2

    aput-object v14, v6, v2

    const/4 v2, 0x3

    aput-object v16, v6, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v2, "Mms/ContactsCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryContactInfoByNumber("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") returned NULL cursor!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contact uri used "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v10

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string v5, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number)  OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

    const/16 v2, 0x8

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v6, v2

    const/4 v2, 0x1

    aput-object v15, v6, v2

    const/4 v2, 0x2

    aput-object v16, v6, v2

    const/4 v2, 0x3

    aput-object v14, v6, v2

    const/4 v2, 0x4

    aput-object v16, v6, v2

    const/4 v2, 0x5

    aput-object v13, v6, v2

    const/4 v2, 0x6

    aput-object v13, v6, v2

    const/4 v2, 0x7

    aput-object v12, v6, v2

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/data/Contact$ContactsCache;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    return-object v0
.end method

.method private getStatusIconResourceId(I)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAlpha(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :cond_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->reset()Ljava/nio/Buffer;

    if-lez v2, :cond_2

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private loadAvatarData(Lcom/android/mms/data/Contact;)[B
    .locals 9

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->hasAvatarData()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v2, v3, [B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v0, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-le v3, v4, :cond_2

    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "avatar stream reading failed,dataLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",readLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    move-object v5, v2

    goto :goto_0

    :catch_0
    move-exception v5

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_2
    throw v5

    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private updateContact(Lcom/android/mms/data/Contact;Z)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToContact(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    monitor-enter p1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$102(Lcom/android/mms/data/Contact;Z)Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    :goto_1
    monitor-enter p1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    const v5, 0x7f09011f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)V

    invoke-static {}, Lcom/android/mms/data/Contact;->access$1300()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1300()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    const-string v4, "Mms/ContactsCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_3

    :catchall_1
    move-exception v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_2
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    :try_start_4
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v4

    :cond_4
    monitor-enter p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v4, 0x0

    :try_start_7
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$102(Lcom/android/mms/data/Contact;Z)Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {p1}, Lcom/android/mms/data/RecipientIdCache;->updateNumber(Lcom/android/mms/data/Contact;)V

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/android/mms/data/Contact$ContactsCache;->isAlpha(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    move-object v4, p1

    :goto_1
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    monitor-exit p0

    :goto_3
    return-object v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, p1, v6}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v6, 0x0

    invoke-direct {v0, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    const/4 v2, 0x0

    monitor-enter v1

    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$100(Lcom/android/mms/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$200(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$100(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$202(Lcom/android/mms/data/Contact;Z)Z

    move-object v0, v1

    new-instance v3, Lcom/android/mms/data/Contact$ContactsCache$1;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/data/Contact$ContactsCache$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    :try_start_3
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$102(Lcom/android/mms/data/Contact;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    if-eqz p2, :cond_4

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    return-object v1

    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2
.end method

.method public getContactInfo(J)Lcom/android/mms/data/Contact;
    .locals 3

    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 2

    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method invalidate()V
    .locals 6

    const-string v4, "Mms/ContactsCache"

    const-string v5, "invalidate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    :try_start_1
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$202(Lcom/android/mms/data/Contact;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v4, "Mms/ContactsCache"

    const-string v5, "invalidate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryContactInfoById(J)Lcom/android/mms/data/Contact;
    .locals 8

    const/4 v3, 0x0

    new-instance v7, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryContactInfoById("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returned NULL cursor!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contact uri used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v7

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
