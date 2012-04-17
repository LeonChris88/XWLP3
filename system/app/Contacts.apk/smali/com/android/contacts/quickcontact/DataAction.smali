.class public Lcom/android/contacts/quickcontact/DataAction;
.super Ljava/lang/Object;
.source "DataAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# instance fields
.field private mAlternateIconRes:I

.field private mAlternateIntent:Landroid/content/Intent;

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataId:J

.field private mDataUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field private final mKind:Lcom/android/contacts/model/DataKind;

.field private final mMimeType:Ljava/lang/String;

.field private mSubtitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V
    .locals 32

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    const/16 v28, -0x1

    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p6

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/model/AccountType$EditType;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_6

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    const-string v28, "is_super_primary"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_2

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    :cond_3
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    sget-object v28, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v9

    const-string v28, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_4

    const-string v28, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    if-eqz v8, :cond_7

    new-instance v18, Landroid/content/Intent;

    const-string v28, "android.intent.action.CALL_PRIVILEGED"

    const-string v29, "tel"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    if-eqz v9, :cond_8

    new-instance v21, Landroid/content/Intent;

    const-string v28, "android.intent.action.SENDTO"

    const-string v29, "smsto"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_2
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const v28, 0x7f020205

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    if-nez v28, :cond_5

    new-instance v28, Landroid/content/Intent;

    const-string v29, "android.intent.action.VIEW"

    invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    const/high16 v29, 0x1400

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void

    :cond_6
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p6

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v21, 0x0

    goto :goto_2

    :cond_9
    if-eqz v8, :cond_a

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_3

    :cond_a
    if-eqz v9, :cond_4

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_3

    :cond_b
    const-string v28, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_4

    const-string v28, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    const-string v28, "sip"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v28, Landroid/content/Intent;

    const-string v29, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    :cond_c
    const-string v28, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    const-string v28, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    const-string v28, "mailto"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    new-instance v28, Landroid/content/Intent;

    const-string v29, "android.intent.action.SENDTO"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    :cond_d
    const-string v28, "vnd.android.cursor.item/website"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    const-string v28, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    new-instance v27, Landroid/net/WebAddress;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    new-instance v28, Landroid/content/Intent;

    const-string v29, "android.intent.action.VIEW"

    invoke-virtual/range {v27 .. v27}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    :cond_e
    const-string v28, "vnd.android.cursor.item/im"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_18

    const-string v28, "vnd.android.cursor.item/email_v2"

    const-string v29, "mimetype"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->isProtocolValid(Landroid/database/Cursor;)Z

    move-result v28

    if-eqz v28, :cond_4

    :cond_f
    if-eqz v14, :cond_13

    const/16 v20, 0x5

    :goto_4
    if-eqz v14, :cond_10

    const v28, 0x7f0a0154

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    :cond_10
    const-string v28, "data6"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v14, :cond_14

    const-string v28, "data1"

    :goto_5
    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v28, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_11

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v10

    :cond_11
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    const-string v29, "imto"

    invoke-virtual/range {v28 .. v29}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    new-instance v28, Landroid/content/Intent;

    const-string v29, "android.intent.action.SENDTO"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v28, "chat_capability"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    and-int/lit8 v28, v6, 0x4

    if-eqz v28, :cond_15

    const/4 v15, 0x1

    :goto_6
    and-int/lit8 v28, v6, 0x1

    if-eqz v28, :cond_16

    const/4 v13, 0x1

    :goto_7
    if-nez v15, :cond_12

    if-eqz v13, :cond_4

    :cond_12
    new-instance v28, Landroid/content/Intent;

    const-string v29, "android.intent.action.SENDTO"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "xmpp:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "?call"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    if-eqz v15, :cond_17

    const v28, 0x7f020209

    :goto_8
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    goto/16 :goto_3

    :cond_13
    const-string v28, "data5"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    goto/16 :goto_4

    :cond_14
    const-string v28, "data1"

    goto/16 :goto_5

    :cond_15
    const/4 v15, 0x0

    goto :goto_6

    :cond_16
    const/4 v13, 0x0

    goto :goto_7

    :cond_17
    const v28, 0x7f020201

    goto :goto_8

    :cond_18
    const-string v28, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    const-string v28, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    :cond_19
    const-string v28, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_4

    const-string v28, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    const-string v28, "tel"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    new-instance v28, Landroid/content/Intent;

    const-string v29, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    const-string v29, "videocall"

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3
.end method

.method private static getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method private static getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isProtocolValid(Landroid/database/Cursor;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method

.method public getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v1, v3, Lcom/android/contacts/model/DataKind;->resPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlternateIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/contacts/quickcontact/DataAction;

    if-nez v2, :cond_2

    const-string v2, "DataAction"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/DataAction;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
