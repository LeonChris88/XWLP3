.class public Lcom/android/contacts/interactions/AddToRejectListInteraction;
.super Landroid/app/Fragment;
.source "AddToRejectListInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
    }
.end annotation


# static fields
.field public static final AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mActive:Z

.field private mBlackListSizeOverDialog:Landroid/app/AlertDialog;

.field private mContactUri:Landroid/net/Uri;

.field private mContactUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsAdd:Z

.field private mIsAdds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mMessageId:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->makeRejectValues(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isOverBlackListSize(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/interactions/AddToRejectListInteraction;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->showBlackListSizeOverDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->checkSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->clearJobs()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->executeNextJob()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/interactions/AddToRejectListInteraction;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getCountOfTotalBlackList()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Ljava/util/HashMap;
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->queryExactlyMatchBlackList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getDisplayName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->findSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    return-void
.end method

.method private checkSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 3

    iget-object v1, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->showHasSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private clearJobs()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    return-void
.end method

.method private executeNextJob()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    goto :goto_0
.end method

.method private findSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 22

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->contactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    if-nez v11, :cond_0

    const-string v2, " ( data1 = \'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const-string v2, " OR data1 = \'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    const-string v2, " ) "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts/raw_contact_entities"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data1"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimetype = \'vnd.android.cursor.item/phone_v2\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v14, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_4

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v15, 0x1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    if-nez v15, :cond_5

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_7

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v14, 0x1

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    if-nez v14, :cond_c

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_9
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    :cond_b
    return-void

    :cond_c
    const/4 v14, 0x0

    goto :goto_4
.end method

.method private getCountOfTotalBlackList()I
    .locals 8

    const/4 v3, 0x0

    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "reject_number"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "reject_checked"

    aput-object v4, v2, v0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private getDisplayName(J)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x1

    const/4 v9, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v9

    const-string v8, "contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    return-object v7

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v10, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    const-string v0, "data2"

    aput-object v0, v2, v1

    const-string v9, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v8
.end method

.method private isOverBlackListSize(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Z
    .locals 9

    move-object v5, p1

    iget v1, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->countOfTotalBlackList:I

    iget-object v4, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "autoreject_maxcount"

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget v6, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    if-nez v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int v6, v1, v0

    if-le v6, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private makeRejectValues(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 6

    iget-object v0, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->exactlyMatchblackListHashMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    goto :goto_1

    :cond_2
    iput-object v4, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    return-void
.end method

.method private queryExactlyMatchBlackList()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v12

    const-string v0, "reject_checked"

    aput-object v0, v2, v11

    const-string v10, "reject_match = 0"

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reject_match = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private showBlackListSizeOverDialog(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$2;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01a9

    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showHasSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-lez v2, :cond_2

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    if-nez v2, :cond_4

    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0217

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0297

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;

    invoke-direct {v7, p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$3;

    invoke-direct {v7, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$3;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    move-result-object v0

    return-object v0
.end method

.method private startAddToRejectList()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    if-eqz v2, :cond_0

    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    invoke-direct {v0, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->contactUri:Landroid/net/Uri;

    new-instance v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    new-array v2, v3, [Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    new-array v2, v3, [Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "addToRejectList"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-direct {v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->setContactUri(Landroid/net/Uri;Z)V

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "addToRejectList"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->setContactUri(Landroid/net/Uri;Z)V

    goto :goto_0
.end method


# virtual methods
.method isStarted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v2, "active"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    const-string v2, "contactUri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    const-string v2, "isAdd"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    const-string v2, "contactUris"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    const-string v2, "isAdds"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    aget-boolean v3, v1, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v2, "active"

    iget-boolean v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "isAdd"

    iget-boolean v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "contactUris"

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "isAdds"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    :cond_0
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    iput-boolean p2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    goto :goto_0
.end method
