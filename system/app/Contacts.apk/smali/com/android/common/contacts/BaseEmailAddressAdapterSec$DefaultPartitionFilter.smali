.class final Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;
.super Landroid/widget/Filter;
.source "BaseEmailAddressAdapterSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/contacts/BaseEmailAddressAdapterSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPartitionFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$500(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 19

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$002(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-static {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$100(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v1, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$102(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Z)Z

    :cond_0
    const/4 v15, 0x0

    new-instance v18, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v18 .. v18}, Landroid/widget/Filter$FilterResults;-><init>()V

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v2, 0x0

    const/4 v9, 0x0

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v1, :cond_7

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-static {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$300(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "name_for_primary_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-static {v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$300(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "type_for_primary_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-static {v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$300(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getGroupNameCursor(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v14

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v1, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-static {v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$400(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v6, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->RIemailAddress(JLjava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v16

    if-nez p1, :cond_8

    :try_start_0
    const-string v13, ""

    :goto_1
    const-string v1, "content://com.android.email.provider/emailaddresscache/filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v3, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "accountName as display_name"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "accountAddress as data1"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "usageCount DESC, accountName"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    :goto_2
    if-eqz v16, :cond_a

    if-eqz v17, :cond_a

    if-eqz v14, :cond_3

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_9

    :cond_3
    new-instance v15, Landroid/database/MergeCursor;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v16, v1, v3

    const/4 v3, 0x2

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    :goto_3
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    :cond_4
    :goto_4
    if-eqz v14, :cond_5

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_6

    :cond_5
    if-nez v16, :cond_6

    if-eqz v17, :cond_13

    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v1, v3

    const/4 v3, 0x1

    aput-object v15, v1, v3

    move-object/from16 v0, v18

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_5
    return-object v18

    :cond_7
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-static {v5}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$200(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    goto/16 :goto_1

    :catch_0
    move-exception v12

    const/16 v17, 0x0

    goto :goto_2

    :cond_9
    new-instance v15, Landroid/database/MergeCursor;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    const/4 v3, 0x3

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_3

    :cond_a
    if-eqz v16, :cond_d

    if-eqz v14, :cond_b

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_c

    :cond_b
    new-instance v15, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v16, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    :goto_6
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_4

    :cond_c
    new-instance v15, Landroid/database/MergeCursor;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_6

    :cond_d
    if-eqz v17, :cond_10

    if-eqz v14, :cond_e

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_f

    :cond_e
    new-instance v15, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    :goto_7
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_4

    :cond_f
    new-instance v15, Landroid/database/MergeCursor;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_7

    :cond_10
    if-eqz v14, :cond_11

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_12

    :cond_11
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_4

    :cond_12
    new-instance v15, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_4

    :cond_13
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    move-object/from16 v0, v18

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto/16 :goto_5
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, [Landroid/database/Cursor;

    move-object v0, v1

    check-cast v0, [Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V

    :cond_0
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-virtual {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    return-void
.end method
