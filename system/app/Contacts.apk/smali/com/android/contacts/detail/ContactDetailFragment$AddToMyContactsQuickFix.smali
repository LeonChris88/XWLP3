.class Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;
.super Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToMyContactsQuickFix"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J

    move-result-wide v12

    const-wide/16 v3, -0x1

    cmp-long v1, v12, v3

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/model/EntityDelta;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    const-string v1, "account_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "data_set"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v18

    const-string v1, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v14

    const-string v1, "data1"

    invoke-virtual {v14, v1, v12, v13}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "com.android.contacts.action.LIST_ALL_CONTACTS"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1900(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v1, 0x7f0a019a

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApplicable()Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v15, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v15, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J

    move-result-wide v4

    const-wide/16 v15, -0x1

    cmp-long v15, v4, v15

    if-nez v15, :cond_6

    const/4 v15, 0x0

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity;

    invoke-virtual {v11}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v12

    const-string v15, "account_type"

    invoke-virtual {v12, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v15, "data_set"

    invoke-virtual {v12, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v14

    if-eqz v14, :cond_7

    const-string v15, "vnd.sec.contact.phone"

    iget-object v0, v14, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v14}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    invoke-virtual {v11}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Entity$NamedContentValues;

    iget-object v15, v13, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v16, "mimetype"

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    iget-object v15, v13, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v16, "data1"

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v15, v15, v4

    if-nez v15, :cond_9

    const/4 v9, 0x1

    :cond_a
    if-nez v9, :cond_b

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_0
.end method
