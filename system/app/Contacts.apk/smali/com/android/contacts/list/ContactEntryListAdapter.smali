.class public abstract Lcom/android/contacts/list/ContactEntryListAdapter;
.super Lcom/android/contacts/widget/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# instance fields
.field protected mCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsCount:Ljava/lang/String;

.field private mDarkTheme:Z

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIncludeProfile:Z

.field private mLoading:Z

.field private mMultiSelectEnabled:Z

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

.field private mProfileExists:Z

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mUpperCaseQueryString:[C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mLoading:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartitions()V

    return-void
.end method

.method private getPartitionByDirectoryId(J)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "address_book_index_counts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    new-instance v3, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-direct {v3, v2, v1}, Lcom/android/contacts/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    return-void
.end method

.method public areAllPartitionsEmpty()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v11

    instance-of v12, v11, Lcom/android/contacts/list/DirectoryPartition;

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v7, v11

    check-cast v7, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const v12, 0x7f0d0089

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v12, 0x7f0d0165

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_1

    const-wide/16 v12, 0x1

    cmp-long v12, v4, v12

    if-nez v12, :cond_2

    :cond_1
    const v12, 0x7f0a019d

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v12, 0x7f0d0164

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v12

    if-eqz v12, :cond_4

    const v12, 0x7f0a0185

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v12, 0x7f0a019c

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object v8, v6

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    if-nez p3, :cond_5

    const/4 v2, 0x0

    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_6

    const-wide/16 v12, 0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v12

    if-lt v2, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0065

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_3

    :cond_6
    const v12, 0x7f0a0066

    const v13, 0x7f0e0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQuantityText(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V
    .locals 8

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {p3, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v1

    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZJ)V

    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>CONTACT_FOUND : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " </GATE-M>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_5
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>CONTACT_NOT_FOUND : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " </GATE-M>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 14

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "ContactEntryListAdapter"

    const-string v12, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v11, "directoryType"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v11, "displayName"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v11, "photoSupport"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v5, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    new-instance v8, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    invoke-virtual {v8, v5, v6}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    const/4 v11, 0x3

    if-ne v9, v11, :cond_3

    :cond_2
    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v8, v11}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    move v4, v0

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_6

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    instance-of v11, v8, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v11, :cond_5

    check-cast v8, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v8}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->invalidate()V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public clearParitionsForDeleteMode()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    const/4 v4, 0x0

    invoke-super {p0, v2, v4}, Lcom/android/contacts/widget/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearPartitions()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->clearPartitions()V

    return-void
.end method

.method protected clearPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1

    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v1, v2

    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    return-void
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-direct {v0, v3, v3}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DirectoryPartition;->setPriorityDirectory(Z)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public abstract getContactDisplayName(I)Ljava/lang/String;
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 9

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    :cond_0
    return-object v5
.end method

.method public getContactsCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->getItemViewType(II)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isUserProfile(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method public getQuantityText(III)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getUpperCaseQueryString()[C
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    return v0
.end method

.method public isChecked(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isChecked(J)Z

    move-result v2

    return v2
.end method

.method public isChecked(J)Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isGalSearchShowMore(I)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v0

    int-to-long v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-string v2, "gal_search_show_more"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isMultiSelectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mMultiSelectEnabled:Z

    return v0
.end method

.method public isPhotoSupported(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected isUserProfile(I)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_1

    const-string v6, "is_user_profile"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v1, v5

    :cond_0
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDataReload()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v4

    instance-of v5, v4, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v5, :cond_1

    move-object v1, v4

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onDataReloadDirectoryPartition(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    instance-of v2, v1, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    :cond_1
    return-void
.end method

.method public setCheck(JZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return-void
.end method

.method public setEmptyListEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return-void
.end method

.method public setMultiSelectEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mMultiSelectEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mMultiSelectEnabled:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    return-void
.end method

.method protected setPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPinnedHeaderContactsCount(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setSectionHeader(Ljava/lang/String;)V

    return-void
.end method

.method public setProfileExists(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a01f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsSectionIndexer;->setProfileHeader(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return-void
.end method

.method public setSortOrder(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return v0
.end method
