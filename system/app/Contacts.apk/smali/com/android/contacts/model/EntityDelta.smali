.class public Lcom/android/contacts/model/EntityDelta;
.super Ljava/lang/Object;
.source "EntityDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDelta;",
            ">;"
        }
    .end annotation
.end field

.field public static mSIMNameLength:I


# instance fields
.field private mContactsQueryUri:Landroid/net/Uri;

.field private mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    new-instance v0, Lcom/android/contacts/model/EntityDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-void
.end method

.method private containsEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 5

    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static fromBefore(Landroid/content/Entity;)Lcom/android/contacts/model/EntityDelta;
    .locals 5

    new-instance v0, Lcom/android/contacts/model/EntityDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta;-><init>()V

    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v3, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    iget-object v3, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDelta;
    .locals 10

    iget-object v7, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-nez p0, :cond_2

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lcom/android/contacts/model/EntityDelta;

    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta;-><init>()V

    :cond_3
    iget-object v8, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v9, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-static {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v8, p1, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 2

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const-string v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v11, :cond_2

    if-nez v10, :cond_2

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v15, "aggregation_mode"

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v15, "account_type"

    invoke-virtual {v14, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v14, "vnd.sec.contact.sim"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/android/contacts/model/EntityDelta;->buildDiffForSim(Ljava/util/ArrayList;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v15, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    sget-object v14, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v15, "data"

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    :cond_6
    :goto_3
    const-string v14, "vnd.android.cursor.item/ringtone"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v11, :cond_9

    const-string v14, "raw_contact_id"

    invoke-virtual {v5, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    goto :goto_2

    :cond_8
    const-string v14, "vnd.android.cursor.item/ringtone"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    goto :goto_3

    :cond_9
    const-string v14, "raw_contact_id"

    invoke-virtual {v5, v14, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    :cond_a
    if-eqz v11, :cond_7

    if-eqz v5, :cond_7

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "When parent insert, child must be also"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v7, :cond_c

    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_d

    if-eqz v12, :cond_d

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    :cond_d
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v14, "aggregation_mode"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public buildDiffForSim(Ljava/util/ArrayList;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v6

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v9

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/16 v21, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-nez v6, :cond_1

    iget-object v2, v11, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    const-string v2, "mimetype"

    invoke-virtual {v11, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v11, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x1

    if-ne v7, v2, :cond_4

    if-nez v18, :cond_2

    const-string v2, "data1"

    invoke-virtual {v11, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :cond_2
    const-string v2, "newTag"

    move-object/from16 v0, v18

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    if-nez v18, :cond_5

    const-string v18, ""

    :cond_5
    const-string v2, "tag"

    move-object/from16 v0, v18

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    goto :goto_1

    :cond_6
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v11, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/4 v2, 0x1

    if-ne v7, v2, :cond_8

    if-nez v20, :cond_7

    const-string v2, "data1"

    invoke-virtual {v11, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :cond_7
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, "newNumber"

    move-object/from16 v0, v20

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-nez v20, :cond_9

    const-string v20, ""

    :cond_9
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, "number"

    move-object/from16 v0, v20

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x1

    goto/16 :goto_1

    :cond_a
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v11, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x1

    if-ne v7, v2, :cond_c

    if-nez v12, :cond_b

    const-string v2, "data1"

    invoke-virtual {v11, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_b
    const-string v2, "newEmails"

    invoke-virtual {v4, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    if-nez v12, :cond_d

    const-string v12, ""

    :cond_d
    const-string v2, "emails"

    invoke-virtual {v4, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x1

    if-ne v5, v2, :cond_11

    if-nez v19, :cond_f

    const-string v2, "tag"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-nez v21, :cond_10

    const-string v2, "number"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-nez v13, :cond_11

    const-string v2, "emails"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v3, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiffForSim(Landroid/net/Uri;Landroid/content/ContentValues;ZZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v14, :cond_13

    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_12

    if-eqz v7, :cond_12

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void

    :cond_13
    const/4 v8, 0x0

    goto :goto_2
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x0

    instance-of v6, p1, Lcom/android/contacts/model/EntityDelta;

    if-eqz v6, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    iget-object v6, v4, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v7, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-direct {v4, v0}, Lcom/android/contacts/model/EntityDelta;->containsEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_0
.end method

.method public getEntryCount(Z)I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_0

    if-eqz v3, :cond_5

    move-object v4, v3

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContactInsert()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 5

    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProfileQueryUri()V
    .locals 1

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") = {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    const-string v5, "null"

    goto :goto_0

    :cond_2
    const-string v5, "\n}\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta;->getEntryCount(Z)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
