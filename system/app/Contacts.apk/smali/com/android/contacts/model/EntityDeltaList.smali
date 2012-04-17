.class public Lcom/android/contacts/model/EntityDeltaList;
.super Ljava/util/ArrayList;
.source "EntityDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/model/EntityDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDeltaList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mJoinWithRawContactIds:[J

.field private mSplitRawContacts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/model/EntityDeltaList$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDeltaList$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDeltaList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/EntityDeltaList$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;II[I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;II[I)V"
        }
    .end annotation

    const-wide/16 v7, 0x0

    sget-object v5, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p0, p2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    aget v0, p4, p2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    aget v1, p4, p3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-ltz v0, :cond_0

    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_2
    if-ltz v1, :cond_0

    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/contacts/model/EntityDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;II[I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Entity;",
            ">;)",
            "Lcom/android/contacts/model/EntityDeltaList;"
        }
    .end annotation

    new-instance v2, Lcom/android/contacts/model/EntityDeltaList;

    invoke-direct {v2}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    invoke-static {v0}, Lcom/android/contacts/model/EntityDelta;->fromBefore(Landroid/content/Entity;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 7

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v6

    :try_start_0
    invoke-static {v6}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method public static fromSingle(Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 1

    new-instance v0, Lcom/android/contacts/model/EntityDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/EntityDeltaList;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 6

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/contacts/model/EntityDeltaList;

    invoke-direct {p0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntityDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/contacts/model/EntityDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    return-object v0
.end method

.method public buildDiff()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->findRawContactId()J

    move-result-wide v15

    const/4 v9, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta;->buildAssert(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v4, v0, [I

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v12

    add-int/lit8 v18, v17, 0x1

    if-eqz v12, :cond_1

    move/from16 v19, v8

    :goto_2
    aput v19, v4, v17

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta;->buildDiff(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    array-length v14, v2

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v14, :cond_3

    aget-wide v19, v2, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-eqz v19, :cond_2

    const-string v19, "raw_contact_id2"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_4
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    const/16 v19, -0x1

    goto :goto_2

    :cond_2
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    :cond_3
    if-nez v12, :cond_4

    move/from16 v17, v18

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v17, v18

    goto :goto_1

    :cond_5
    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-eqz v19, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v19, "raw_contact_id1"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move/from16 v17, v18

    goto/16 :goto_1

    :cond_6
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_7

    move v9, v8

    goto :goto_5

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/contacts/model/EntityDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;[I)V

    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v3, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_a
    return-object v7
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .locals 7

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    return-wide v3

    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDeltaList;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    goto :goto_0
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .locals 5

    const/4 v3, -0x1

    if-nez p1, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public isMarkedForJoining()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMarkedForSplitting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setJoinWithRawContacts([J)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-boolean v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
